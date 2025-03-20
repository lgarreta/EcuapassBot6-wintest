@echo off
setlocal enabledelayedexpansion

:: Define file paths
set "PATCH_FILE=update_patch_*.vcdiff"
set "LOG_FILE=patch.log"
set "CURRENT_FILE=..\ecuapass_commander\ecuapass_commander.exe"
set "ORIGINAL_FILE=..\ecuapass_commander\ecuapass_commander_ORG.exe"
set "NEW_FILE=..\ecuapass_commander\ecuapass_commander_NEW.exe"

echo ===================================
echo Checking for Updates from GitHub
echo ===================================
:: Change to the app directory
cd /d "%~dp0"

:: Check if patch file exists
if not exist "%PATCH_FILE%" (
    echo +++ No patch file found. Running existing EXE.
    goto end
)

echo +++ Checking Patch: %PATCH_FILE%

:: Ensure log file exists
if not exist "%LOG_FILE%" (
    echo +++ Creating log file: %LOG_FILE%
    type nul > "%LOG_FILE%"
)

:: Extract version number from patch filename (assumes format: update_patch_XXX.vcdiff)
for %%P in (update_patch_*.vcdiff) do (
    set PATCH_FILE=%%P
    set PATCH_VERSION=%%~nP
    set PATCH_VERSION=!PATCH_VERSION:update_patch_=!
)

echo +++ Patch version: %PATCH_VERSION%

:: Check if version is already applied
findstr /C:"%PATCH_VERSION%" "%LOG_FILE%" >nul
if %errorlevel% == 0 (
    echo +++ Patch %PATCH_VERSION% already applied. Skipping...
    goto end
)

:: Ensure the original backup exists
if not exist "%ORIGINAL_FILE%" (
    echo +++ Creating original file backup
    copy "%CURRENT_FILE%" "%ORIGINAL_FILE%" 
)

:: Apply the patch
echo +++ Applying patch...
xdelta3.exe -d -s "%ORIGINAL_FILE%" "%PATCH_FILE%" "%NEW_FILE%"

:: Check if patching was successful
if not exist "%NEW_FILE%" (
    echo +++ Patch failed! Keeping current EXE.
    goto end
)

:: Replace current EXE with patched version
echo +++ Updating executable...
copy "%NEW_FILE%" "%CURRENT_FILE%"
del "%NEW_FILE%"

:: Update log file with applied version
echo %PATCH_VERSION% >> "%LOG_FILE%"

:end
echo ===================================
echo Starting Java GUI...
echo ===================================

    
