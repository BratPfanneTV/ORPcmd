@echo off
echo USED TOOLS:
echo     uTIME.exe
echo      =^> uTIME -cf %0
echo     cTIME.exe
echo      =^> cTIME %%ts%%
echo.
..\uTIME -fc %0 >time.txt
set /p ts=<time.txt
del time.txt
..\PRINT "The creation time of %0 is: "
..\cTIME %ts%
pause