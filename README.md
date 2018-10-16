 # ORPcmd

A set of new cmd-commands.
Made by http://jriedel.info/

# Installation

This is quite easy. Download the entire master branch OR the branch for the version you want
and extract the version you want out of the ZIP-File. Then, add the path of 
the directory to the PATH-Environment-Variable.

# Changelog

| v1  | v2  |
| --- | --- |
| Added xPRINT.exe           | Added cTIME.exe |
| Added MAKEANIMATION.exe    | Added uTIME.exe |
| Added ANIMATION.exe        | |
| Added CURSORVISIBILITY.exe | |
| Added STRLEN.exe           | |
| Added xCOLOR.exe           | |
| Added PRINT.exe            | |
| Added CURSORPOS.exe        | |

# Documentation

| Command          | Version Added | Syntax                              | Description |
| ---------------- | ------------- | ----------------------------------- | ----------- |
| ANIMATION        |      v1       | `ANIMATION <MS> <ANIMATION>`        | Plays an animation. **MS** specifies the amount of Milliseconds per Frame, and **ANIMATION** is just all the animation frames seperated by spaces. <br /> Example: <br /> ANIMATION 200 U u .. u <br /> Will animate to: <br /> U u .. u U u .. u U u .. u U u .. u U u .. u<br /><br />To have your code continue while the animation is running, call it with `START /B` |
| cTIME            |      v2       | `cTIME <TIMESTAMP>`                 | Converts a Millisecond-Unix-Timestamp to human-readable time, ready to output. |
| CURSORPOS        |      v1       | `CURSORPOS <X> <Y>`                 | Sets the cursor to the given **X** and **Y** coordinates. **Y** is relative to the top of the entire current output, not necessarily the window. |
| CURSORVISIBILITY |      v1       | `CURSORVISIBILITY`                  | Changes if the Cursor should be visible. |
|                  |               | `CURSORVISIBILITY GET`              | Outputs the current Cursor visibility state. |
| MAKEANIMATION    |      v1       | `MAKEANIMATION <Type> <Sub> [WORD]` | Outputs a valid animation value for the `ANIMATION` command. <br /><br />Types: <br />`Rotate`:<br />`0   -  / - \ \|`<br />`1   -  ^ > V <`<br />`2   -  + x`<br />`3   -  p d b q`<br />`Range`:<br />Returns a set of numbers from 0 to the given number.<br />`Alphabet`:<br />Returns **n** letters of the alphabet. Maximum is 26.<br />`Appear`<br />Accepts the **WORD** Parameter, while a *0* for **Sub** is required. It makes the given word appear one letter at a time. |
| PRINT            |      v1       | `PRINT <String>`                    | Prints the **String**. Only difference to the built-in `echo` is that no newline is added at the end. |
| STRLEN           |      v1       | `STRLEN <String>`                   | Returns the amount of characters in **String** in `%errorlevel%` |
| uTIME            |      v2       | `uTIME`<br />`uTIME -c`             | Returns the current time as Millisecond-Unix-Timestamp. |
|                  |               | `uTIME -f <File>`                   | Returns the last modification date for **File** as Millisecond-Unix-Timestamp. |
|                  |               | `uTIME -fc <File>`                  | Returns the creation date for **File** as Millisecond-Unix-Timestamp. |
| xCOLOR           |      v1       | `xCOLOR <Color>`                    | Sets the print color to **Color**, as seen in `color`, but only for the text after it. |
| xPRINT           |      v1       | `xPRINT <File>`                     | Reads the **File** as Instructions and executes them all at once. <br /><br />`c00` - `Changes Color. (to 00 in this case.)`<br />`eHello` - `Prints something. ("Hello" in this case.)`<br />`n` - `New line.` |
