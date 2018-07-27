@echo off
rem appends ckls to different ckl.
rem


echo.
set /p SOURCECHECKLIST=Enter the path and name of the source STIG Checklist file. 

echo.
set /p DESTINATIONCHECKLIST=Enter the path and name of the destination STIG Checklist file. 

echo.
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%~dp0\xferSTIGchecklistfilecontent.ps1' '%SOURCECHECKLIST%' '%DESTINATIONCHECKLIST%'";
if %errorlevel% equ 1 (
  echo.
  set /p DONE=FAILURE: Press enter to exit.
  exit 1
)

echo.
set /p DONE=SUCCESS: Press enter to exit.
  
exit 0
