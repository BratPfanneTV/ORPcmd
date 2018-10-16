 # ORPcmd

A set of new cmd-commands.
Made by http://jriedel.info/

# Installation

This is quite easy. Download the entire master branch OR the branch for the version you want
and extract the version you want out of the ZIP-File. Then, add the path of 
the directory to the PATH-Environment-Variable.

# Changelog

| v1  | v2  | v3  |
| --- | --- | --- |
| Added xPRINT.exe           | Added cTIME.exe | Added READKEY.exe |
| Added MAKEANIMATION.exe    | Added uTIME.exe | Added SLEEP.exe |
| Added ANIMATION.exe        | | Added STARTINVISIBLE.exe |
| Added CURSORVISIBILITY.exe | | Removed CURSORVISIBILITY.exe |
| Added STRLEN.exe           | | Removed CURSORPOS.exe |
| Added xCOLOR.exe           | | Added CONSOLE.exe |
| Added PRINT.exe            | | |
| Added CURSORPOS.exe        | | |

# Documentation

| Command          | Version Added | Syntax                              | Description |
| ---------------- | ------------- | ----------------------------------- | ----------- |
| ANIMATION        |      v1       | `ANIMATION <MS> <ANIMATION>`        | Plays an animation. **MS** specifies the amount of Milliseconds per Frame, and **ANIMATION** is just all the animation frames seperated by spaces. <br /> Example: <br /> ANIMATION 200 U u .. u <br /> Will animate to: <br /> U u .. u U u .. u U u .. u U u .. u U u .. u<br /><br />To have your code continue while the animation is running, call it with `START /B` |
| CONSOLE          |      v3       | `CONSOLE cursorsize <0-100>`        | Sets the cursor to the given size. Set to 0 to make it disappear. |
|                  |               | `CONSOLE windowscroll <x> <y>`      | Scrolls the window to the given point, measured from the top left corner. |
|                  |               | `CONSOLE windowsize <x> <y>`        | Resizes the window to the given width and height. |
|                  |               | `CONSOLE clear`                     | Clears the window. |
| | | `CONSOLE get <setting>` | Returns the current value of the settings *cursorsize*, *windowscroll* or *windowsize*. Also, you can get the current window *title* with it. |
| cTIME            |      v2       | `cTIME <TIMESTAMP>`                 | Converts a Millisecond-Unix-Timestamp to human-readable time, ready to output. |
| MAKEANIMATION    |      v1       | `MAKEANIMATION <Type> <Sub> [WORD]` | Outputs a valid animation value for the `ANIMATION` command. <br /><br />Types: <br />`Rotate`:<br />`0   -  / - \ \|`<br />`1   -  ^ > V <`<br />`2   -  + x`<br />`3   -  p d b q`<br />`Range`:<br />Returns a set of numbers from 0 to the given number.<br />`Alphabet`:<br />Returns **n** letters of the alphabet. Maximum is 26.<br />`Appear`<br />Accepts the **WORD** Parameter, while a *0* for **Sub** is required. It makes the given word appear one letter at a time. |
| PRINT            |      v1       | `PRINT <String>`                    | Prints the **String**. Only difference to the built-in `echo` is that no newline is added at the end. |
| READKEY | v3 | `READKEY <MS>` | Waits **MS** Milliseconds for a keypress, then returns 0. The returned number when a key is pressed consists of two values:<br />Example: `7068`<br />The *68* stands for the <u>KeyCode</u> of the pressed key, in this case *D*. The 7 at the beginning stands for the Modifier-buttons that were pressed:<br />`0 - None, 1 - Alt, 2 - Shift, 3 - Alt+Shift, 4 - Control, 5 - Control+Alt, 6 - Control+Shift, 7 - Control+Alt+Shift`.<br />These values can be extracted using *Division* and *Modulo*. |
| SLEEP | v3 | `SLEEP <MS>` | Pauses the script for **MS** Milliseconds. |
| STARTINVISBLE | v3 | `STARTINVISIBLE <script file>` | When used with `START /B`, this starts a batch-script as invisible. This script can then do whatever you want. When executed, the command writes the PID of the started process to `%temp%\processid.txt`, so you can terminate it with `taskkill` at any time. This may be updated to return the PID in *errorlevel* and not require *start /b* in a future version. |
| STRLEN           |      v1       | `STRLEN <String>`                   | Returns the amount of characters in **String** in `%errorlevel%` |
| uTIME            |      v2       | `uTIME`<br />`uTIME -c`             | Returns the current time as Millisecond-Unix-Timestamp. |
|                  |               | `uTIME -f <File>`                   | Returns the last modification date for **File** as Millisecond-Unix-Timestamp. |
|                  |               | `uTIME -fc <File>`                  | Returns the creation date for **File** as Millisecond-Unix-Timestamp. |
| xCOLOR           |      v1       | `xCOLOR <Color>`                    | Sets the print color to **Color**, as seen in `color`, but only for the text after it. |
| xPRINT           |      v1       | `xPRINT <File>`                     | Reads the **File** as Instructions and executes them all at once. <br /><br />`c00` - `Changes Color. (to 00 in this case.)`<br />`eHello` - `Prints something. ("Hello" in this case.)`<br />`n` - `New line.` |
