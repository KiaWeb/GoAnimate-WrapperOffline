::duh
@echo off && cls
SETLOCAL ENABLEDELAYEDEXPANSION
title Wrapper: Offline installer

:: warning

echo This tool will automatically install Wrapper: Offline in the current directory. 
echo If you need to move this file somewhere else, now's the time to do so.
pause

:: continue
cls
:choice
echo Which version are you installing?
echo Press 1 for the current version.
echo Press 2 for the development version.

set /p CHOICE=Choice:
echo:
if "!choice!"=="1" goto current
if "!choice!"=="2" goto indev
echo Time to choose. && goto choice
:current

cls
echo This may take a while, please wait. DO NOT CLOSE THIS WINDOW!
PING -n 5 127.0.0.1>nul
call util\PortableGit\bin\git.exe clone https://github.com/Wrapper-Offline/Wrapper-Offline
echo Wrapper: Offline is now installed! 
goto exit

:indev

cls
echo This may take a while, please wait. DO NOT CLOSE THIS WINDOW!
PING -n 5 127.0.0.1>nul
call util\PortableGit\bin\git.exe clone https://github.com/Wrapper-Offline/Wrapper-Offline-Beta
echo Wrapper: Offline Beta is now installed! 
goto exit

:exit
pause
