@echo off
color A
chcp 65001 >nul
title © hoolio's CyberMultiTool ©
cls

:menu
echo **************************
echo         * Menu *
echo **************************
echo.
echo.
echo 1) List Of Users In The System
echo 2) Create A New User
echo 3) Change A User's Password
echo 4) Delete A User
echo 5) Exit hoolio's CyberMultiTool
echo.
set /p input="| © Made By hoolio2002 | Made In 09/03/2025 | Enter Your Choice: "

if "%input%"=="1" (
    title List Of Users
    cls
    net user
    pause
    cls
    goto menu
)

if "%input%"=="2" (
    title Create A New User
    cls
    set /p username="Enter New Username: "
    set /p password="Enter New Password: "
    net user %username% %password% /add
    echo New User Created With Credentials:
    echo Credentials: %username% %password%
    pause
    cls
    goto menu
)

if "%input%"=="3" (
    title Change A User's Password
    cls
    set /p username="Target User: "
    set /p password="Enter New Password: "
    net user %username% %password%
    pause
    cls
    goto menu
)

if "%input%"=="4" (
    title Delete A User
    cls
    echo Enter The Username Of The User You Want To Delete: 
    set /p user="Username: "
    net user %user% /delete
    pause
    cls
    goto menu
)

if "%input%"=="5" exit