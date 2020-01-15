@ECHO OFF
:: This program is for change your hop limit to default
:: run as admin first
:: this tests if the file is running as admin
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if '%errorlevel%' NEQ '0' ( GOTO askAdmin )
GOTO gotAdmin
:askAdmin

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' 
(
	echo Requesting administrative privileges...
	goto UACPrompt
) 
else ( goto gotAdmin )
:UACPrompt

echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin

if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
::from this point you can execute your command as admin
echo Set you hop limit to default
echo ******************************************
echo Change your Time to Live (Hop Limit) to 128
netsh int ipv4 set glob defaultcurhoplimit=128
pause