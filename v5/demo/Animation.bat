@echo off
echo USED TOOLS:
echo     MAKEANIMATION.exe
echo      =^> MAKEANIMATION Rotate 0
echo      =^> MAKEANIMATION Rotate 1
echo      =^> MAKEANIMATION Rotate 2
echo      =^> MAKEANIMATION Rotate 3
echo     ANIMATION.exe
echo      =^> START /B ANIMATION 200 %%animation%%
echo     CONSOLE.exe
echo      =^> CONSOLE cursorsize 0
echo.
..\CONSOLE cursorsize 0
..\MAKEANIMATION Rotate 0 >0.txt
..\MAKEANIMATION Rotate 1 >1.txt
..\MAKEANIMATION Rotate 2 >2.txt
..\MAKEANIMATION Rotate 3 >3.txt
set /p a0=<0.txt
set /p a1=<1.txt
set /p a2=<2.txt
set /p a3=<3.txt
del 0.txt
del 1.txt
del 2.txt
del 3.txt
START /B ..\ANIMATION 200 %a0%
pause>NUL
echo.
rem taskkill /f /IM ANIMATION.exe>NUL
START /B ..\ANIMATION 200 %a1%
pause>NUL
echo.
rem taskkill /f /IM ANIMATION.exe>NUL
START /B ..\ANIMATION 200 %a2%
pause>NUL
echo.
rem taskkill /f /IM ANIMATION.exe>NUL
START /B ..\ANIMATION 200 %a3%
pause>NUL
echo.
rem taskkill /f /IM ANIMATION.exe>NUL
pause>NUL
exit