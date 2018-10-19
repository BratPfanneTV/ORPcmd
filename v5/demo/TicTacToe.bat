rem USED TOOLS: 
rem 	RENDER-TABLE
rem

@echo off
setlocal enabledelayedexpansion
set place=X
set x0= 
set x1= 
set x2= 
set x3= 
set x4= 
set x5= 
set x6= 
set x7= 
set x8= 
set lsel=0
title TicTacToe

rem PATTERNS 012 345 678 036 147 258 048 246

set patterns_1=0,1,2
set patterns_2=3,4,5
set patterns_3=6,7,8
set patterns_4=0,3,6
set patterns_5=1,4,7
set patterns_6=2,5,8
set patterns_7=0,4,8
set patterns_8=2,4,6
set patterns_s09=0,2,6,8
set patterns_s10=1,3,5,7

set anyisvalid=false

set charX=88
set charO=79

set optionID=TicTacToe
goto start

:d
set anyisvalid=false
for /f "tokens=1* delims==" %%a in ('set patterns_') do (
	call :checkpattern "%%a" "%%b"
)

:start
Cls
set mode=SELECT
if "%anyisvalid%"=="true" set mode=EMU-SELECT
echo USED TOOLS:
echo     RENDER-TABLE.exe
echo.
..\RENDER-TABLE %mode% 3 3 "%x0%" "%x1%" "%x2%" "%x3%" "%x4%" "%x5%" "%x6%" "%x7%" "%x8%"
if "%anyisvalid%"=="true" echo.
if "%anyisvalid%"=="true" echo %shouldbe% won.
if "%anyisvalid%"=="true" pause
if "%anyisvalid%"=="true" exit
set lsel=%errorlevel%
set x%lsel%=%place%
set place2=%place%
if "%place2%"=="X" set place=O
if "%place2%"=="O" set place=X
goto d

:checkpattern
set origX=%lsel%
set shouldbe=!x%origX%!
set pattern=%~2
set valid=true
for %%a in (%pattern%) do (
	if "!x%%a!" NEQ "%shouldbe%" set valid=false
)
if "%valid%"=="true" set anyisvalid=true
exit /b