@echo off
color 0b
title Login System

:login
cls
echo ==========================
echo       LOGIN SYSTEM
echo ==========================
set /p user=Username:
set /p pass=Password:

if %user%=="admin" if %pass%=="1234" got success
echo.
echo Invalid credentials!
pause
goto login

