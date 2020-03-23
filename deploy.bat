@ECHO OFF 
ECHO Running launch4j...
"%~dp0..\launch4jc" "%~dp0\config.xml"
ECHO Signing executable...
"%~dp0\sign4j" "%~dp0\signtool" sign /v /f "%~dp0\PungoSPC.pfx" /t http://timestamp.globalsign.com/scripts/timstamp "%~dp0\RePair.exe"
ECHO Done.
PAUSE