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

if %user%=="admin" if %pass%=="1234" goto success
echo.
echo Invalid credentials!
pause
goto login

:success
cls
echo ==========================
echo       WELCOME, %user%!
echo ==========================
echo 1. Show System Info
echo 2. Logout
set /p opt=Select:

if %opt%=="1" goto sysinfo
if %opt%==""2" goto login
goto success