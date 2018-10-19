@echo off
echo USED TOOLS:
echo     CALCULATOR.exe
echo      =^> CALCULATOR I %%un1%%
echo      =^> CALCULATOR I %%un2%%
echo      =^> CALCULATOR D %%n1%% %%n2%%
echo      =^> CALCULATOR -I %%result%%
echo     PRINT.exe
echo.
echo Example Division
echo (Accepts Decimal Places)
set /p un1=Number 1:
set /p un2=Number 2:
..\CALCULATOR I 0 %un1% 3
set n1=%errorlevel%
..\CALCULATOR I 0 %un2% 3
set n2=%errorlevel%
..\CALCULATOR D %n1% %n2% 3
set result=%errorlevel%
echo.
..\PRINT "%un1% / %un2% = "
..\CALCULATOR -I 0 %result% 3
echo.
echo.
pause