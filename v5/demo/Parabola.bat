@echo off
..\CONSOLE windowsize 211 50
echo USED TOOLS:
echo     RENDER-GRAPH.exe
echo      =^> RENDER-GRAPH 20 abs(X^^^^2)/16
echo     CONSOLE.exe
echo      =^> CONSOLE windowsize 211 50
echo      =^> CONSOLE windowscroll 0 0
echo.
..\RENDER-GRAPH 20 abs(X^^2)/16
..\CONSOLE windowscroll 0 0
pause>NUL