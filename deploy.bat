@ECHO OFF 
ECHO Running packr...
java -jar packr.jar Win.json
ECHO Signing executable...
signtool sign /v /f PungoSPC.pfx /t http://timestamp.globalsign.com/scripts/timstamp "%~dp0\RepairWin\RePair.exe"
ECHO Done.
PAUSE