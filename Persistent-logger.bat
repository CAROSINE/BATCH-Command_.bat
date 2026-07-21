@echo off
setlocal enabledelayedexpansion

:: Hidden temp file এ লগ রাখা
set logfile=%temp%\syslog_%computername%.tmp
attrib +h %logfile% 2>nul

:log
cls
echo ===== SYSTEM LOGGER =====
echo 1. Write to hidden log
echo 2. View hidden log
echo 3. Delete hidden log
echo 4. Add to startup
echo 5. Exit
set /p opt=Choice:

if "%opt%"=="1" goto writelog
if "%opt%"=="2" goto viewlog
if "%opt%"=="3" goto dellog
if "%opt%"=="4" goto addstartup
if "%opt%"=="5" goto end
goto log