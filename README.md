# EcuapassBot5: 
Extracción y digitación automática de docuentos al ECUAPASS.
Esta versión trabaja tanto extrayendo de la Web como desde un Pdf (ALDIA)

## LOG
Mar/17: r0.9779 GUI: Empresa to Bot. Improved CPI 'Gastos'. Fixed empty MCI 'aduana'. Log MCI Transportista.  

Feb/24: r0.9778 EcuapassBot MenuIzquierdo. New 'getInfoAduana' for all. New winexe for .pycs.
Feb/22: r0.9777 Creating 'create-exe.py' script to use only .pyc files for win exe.
Feb/18: r0.9776 Fixed Dynamic imports for InfoDocClasses. Working for AGENCOMEX.
Feb/15: r0.9775 Dynamic imports for InfoDocClasses. Working for AGENCOMEX.
Jan/28: r0.9773 Improving checking warnings of values before transmit.
Jan/25: r0.9772 Fixing AGCX. Fixing checking-coloring american format
Jan/22: r0.9771 New installer (cloud checking). New GUI Settings (Panel, Empresa, Dialog)
Jan/21: r0.9770 New GUI Settings (Panel, Empresa, Dialog)
Jan/12: r0.9760 New command "init_running_dir"
Jan/10: r0.9750 Working with ALDIA::XXXX branchs, not deployed. Modified GUI, EcuInfo
Dic/26: r0.9745 Creating log feedback with google cloud sheets
Dic/20: r0.9744 Added web access to LGTNS
Dic/20: r0.9743 Quantities only checked if american format.
Dic/20: r0.9742 Fixed select cartaporte blue image.
Dic/19: r0.9741 SSH: Test auto-update.
Dic/19: r0.9740 BOT: Changed clear to locate on AbrirCerrar button.
Dic/19: r0.9731 INFO: Fixed BZ vehiculo. MRN with "CEC" text.
Dic/18: r0.9730 BOT: Fixed image search.
Dic/18: r0.9721 Added "getEcuapassFloat". Tunnings for AGCX. Fixing "ImageNotFound".
Dic/17: r0.9720 Working for AGENCOMEX. Improved new empresa. 
Dic/16: r0.9711 GUI:Added ProgressDialog
Dic/16: r0.971  GUI:Actived update settings.

Dic/15: r0.970  Working web access (Tested for Codebin).
Dic/10: r0.962  Working in SanchezPolo: First extraction of EcuFields.
Dic/05: r0.961  Fixed ImageNotFoundException. Removed CPI-Image-FindButton
Dic/05: r0.961  MCI: Click TipoCarga, Containers, Precintos.
Dic/05: r0.961  DOCS: Unified MCI, CPI, DTI resources in data_ecuapass
Dic/05: r0.961  GUI: Updated for ALDIA, ALCOMEXCARGO, BYZA, and LOGITRANS
Dic/02: r0.961: Working for ALDIA. Includes ecuapassdocs lib. Next: Test for NTA, Byza, Logitrans.
Dic/05: r0.960  GUI: New PythonWorker and PythonManager instead Server
Nov/29: r0.960: First update after scraping only from PDFs and using a Python commander instead of a server.
Nov/27: r0.958: LAST update before change ecuapass_server to ecuapass_app
Nov/23: r0.957: BYZA with new pdfScraping. Fixing ALDIA pdfScraping. GUI: Initial empresa validations.
Nov/11: r0.956: Changing ALDIA to SERCARGA
Nov/11: r0.954: Testing new Win11 development environment. 
Nov/09: r0.953: LAST UPDATE: Scraping from Web (Codebin-ALDIA-CPI) and PDF (ALDIA-MCI) 
Nov/08: r0.952: LIB: Change driver birthdate to 2000
Nov/08: r0.951: GUI: Changed docType, docNumber from PDF instead filename.
Nov/02: r0.950  Large modifications for ALDIA. Creating ScrapingBots.
Aug/27: r0.940  DOC: Improved for LOGITRANS COL: Transito, getPaisCiudad, getFechaEntrega, getPlacaPais.
Aug/16: r0.936  GUI: Release from file. DOC: Huaquillas Distrito. BOT: "aduanas pais-ciudad" Up-Down to wait cities.
Aug/14: r0.934  BOT: Improved "manifiesto:aduanas pais-ciudad". Up-Down to wait cities.
Aug/13: r0.935  SRV: Added 'updateFieldsFromFields : updateDistrito'. Improved Extractor : getPaisCiudad.
Aug/06: r0.934  SRV: Modified for LOGITRANS aduanas and Vehiculo errors. GUI: Modified for ALERTS:||NEEDED.
Jul/25: r0.933  GUI: Fixed stopping server
Jul/24: r0.932  GUI: Improving InputsView:onProcessingDocument.
Jul/23: r0.931  SRV: Unifying "getBultosInfo", new getBultosInfo(CPI|MCI) and cases for LOGITRANS
Jul/20: r0.930  Fixed bin settings in EcuBot. Working list_blobs in EcuFeedback
Jul/19: r0.930  Binary settings. GUI: Admin settings. Asynchronous feedback
Jul/18: r0.927  BOT4: asynchronous feedbak
Jul/08: r0.926. BOT4: Modified to work with PERU for NTA
Jul/04: r0.925. BOT4: Working control panel, speed options, messages
Jun/28: r0.911: BOT4: Bot controller: start and stop
Jun/13: r0.910: Full Test: docs and bot. Added return messages for response handlin. Fixed printx.
Jun/12: r0.908: controller.out withing a invokeLater
Jun/11: r0.907: HandleResponse run from a InvokeLater.
Jun/11: r0.906: Fixed errors. Threads. CodebinBot validations and exceptions.
Jun/06: r0.905: Server messages to GUI. Ecudoc Exceptions 
Jun/04: r0.904: Testing processes vs threads, forced exit, own thread for CodebinBot.
May/29: r0.903: Redesigned with multiprocessing for windows and forced exit.


