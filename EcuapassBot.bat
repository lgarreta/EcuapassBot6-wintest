taskkill /IM "ecuapass_commander.exe" /F

echo "+++ Descargando Actualizaciones EcuapassBot..."
::git reset --hard 
git pull origin main

echo "+++ Verificando si se actualiza aplicacion principal..."
call patches\patch-update-exe-win.bat

echo "+++ Ejecutando EcuapassBotGUI.exe"
echo %cd%
EcuapassBotGUI.exe
