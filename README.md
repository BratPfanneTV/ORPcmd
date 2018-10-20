 # ORPcmd

A set of new cmd-commands.
Made by http://jriedel.info/

# Installation

This is quite easy. Download the entire master branch OR the branch for the version you want
and extract the version you want out of the ZIP-File. Then, add the path of 
the directory to the PATH-Environment-Variable.

# Changelog

### v5
*"the Display-Update"*
```diff
+ MOVEBUFFER.exe
+ RENDER-TABLE.exe
+ RENDER-GRAPH.exe
+ STRCONTAINS.exe
+ UTF16.exe
```

### v4.1
*"the Updating-Update"*
```diff
- CALCULATOR-BASIC.exe
- CALCULATOR-CMD.exe
~ "CONSOLE.exe get" now returns all its values as errorlevels.
~ "CALCULATOR.exe" now accepts a decimal-precision value and supports stdout-output for 32+-Bit values.
```

### v4
*"the Math-Update"*
```diff
+ CALCULATOR.exe
+ CALCULATOR-BASIC.exe
+ CALCULATOR-CMD.exe
```

### v3
*"the Script-Update"*
```diff
+ READKEY.exe
+ SLEEP.exe
+ STARTINVISIBLE.exe
- CURSORVISIBILITY.exe
- CURSORPOS.exe
+ CONSOLE.exe
```

### v2
*"the Timing-Update"*
```diff
+ cTIME.exe
+ uTIME.exe
```

### v1
*"the Miscellaneous-Update"*
```diff
+ xPRINT.exe
+ MAKEANIMATION.exe
+ ANIMATION.exe
+ CURSORVISIBILITY.exe
+ STRLEN.exe
+ xCOLOR.exe
+ PRINT.exe
+ CURSORPOS.exe
```

# Documentation

| Command          | Version Added | Output | Syntax                              | Description |
| ---------------- | ------------- | ------ | ----------------------------------- | ----------- |
| ANIMATION        |      v1       | *stdout* **animation** | `ANIMATION <MS> <ANIMATION>`        | Plays an animation. **MS** specifies the amount of Milliseconds per Frame, and **ANIMATION** is just all the animation frames seperated by spaces. <br /> Example: <br /> ANIMATION 200 U u .. u <br /> Will animate to: <br /> U u .. u U u .. u U u .. u U u .. u U u .. u<br /><br />To have your code continue while the animation is running, call it with `START /B` |
| CALCULATOR | v4 | *errorlevel* **result**\**10^**decimals*** | `CALCULATOR <mode> [0] <num1> [<num2>] [<decimals>]` | Performs mathematical operations. All numbers are inputted as <br />*actual number*\***result**\**10^**decimals***, and also outputted as such, to provide decimal place accuracy. The smaller **decimals** is, the bigger the input numbers can be without raising errors. |
| | | *stdout* **result**\**10^**decimals*** | `CALCULATOR X <mode> [0] <num1> [<num2>] [<decimals>]` | Outputs to *stdout* instead of *errorlevel*, which disables almost any number size limits. |
| | | | `CALCULATOR [X] A <num1> <num2>` | Adds to numbers together. |
| | | | `CALCULATOR [X] S <num1> <num2>` | Subtracts **num2** from **num1**. |
| | | | `CALCULATOR [X] D <num1> <num2>` | Divides **num1** by **num2**. |
| | | | `CALCULATOR [X] M <num1> <num2>` | Multiplies the numbers by each other. |
| | | | `CALCULATOR [X] P <num1> <num2>` | Takes **num1** to the power of **num2**. |
| | | | `CALCULATOR [X] R <num1> <num2>` | Returns the **num2**th root of **num1**. |
| | | | `CALCULATOR [X] F 0 <num1>` | Returns **num1**'s factorial. |
| | | | `CALCULATOR [X] I 0 <num1>` | Converts any number, which is *not* multiplied by *10^**decimals*** and *has* a decimal point to a valid input for the other commands. Both *`,`* and *`.`* as decimal seperators are supported.  |
| CONSOLE          |      v3       | *none* |  `CONSOLE cursorsize <0-100>`        | Sets the cursor to the given size. Set to 0 to make it disappear. |
|                  |               | | `CONSOLE windowscroll <x> <y>`      | Scrolls the window to the given point, measured from the top left corner. |
|                  |               | | `CONSOLE windowsize <x> <y>`        | Resizes the window to the given width and height. |
|                  |               | | `CONSOLE clear`                     | Clears the window. |
| | | *errorlevel* **[num0\*[1000|10000] + ] num1** | `CONSOLE get <setting>` | Returns the current value of the settings *cursorsize*, *windowscroll* or *windowsize*. Also, you can get the current window *title* with it. |
| cTIME            |      v2       | *stdout* **timestring** | `cTIME <TIMESTAMP>`                 | Converts a Millisecond-Unix-Timestamp to human-readable time, ready to output. |
| MAKEANIMATION    |      v1       | *stdout* **animation-string** | `MAKEANIMATION <Type> <Sub> [WORD]` | Outputs a valid animation value for the `ANIMATION` command. <br /><br />Types: <br />`Rotate`:<br />`0   -  / - \ \|`<br />`1   -  ^ > V <`<br />`2   -  + x`<br />`3   -  p d b q`<br />`Range`:<br />Returns a set of numbers from 0 to the given number.<br />`Alphabet`:<br />Returns **n** letters of the alphabet. Maximum is 26.<br />`Appear`<br />Accepts the **WORD** Parameter, while a *0* for **Sub** is required. It makes the given word appear one letter at a time. |
| MOVEBUFFER       | v5 | *none* | `MOVEBUFFER <oldX> <oldY> <width> <height> <newX> <newY>` | Moves the given area in console buffer somewhere else. |
| PRINT            |      v1       | *stdout* **string** | `PRINT <String>`                    | Prints the **String**. Only difference to the built-in `echo` is that no newline is added at the end. |
| READKEY | v3 | *errorlevel* **keyCode** | `READKEY <MS>` | Waits **MS** Milliseconds for a keypress, then returns 0. The returned number when a key is pressed consists of two values:<br />Example: `7068`<br />The *68* stands for the <u>KeyCode</u> of the pressed key, in this case *D*. The 7 at the beginning stands for the Modifier-buttons that were pressed:<br />`0 - None, 1 - Alt, 2 - Shift, 3 - Alt+Shift, 4 - Control, 5 - Control+Alt, 6 - Control+Shift, 7 - Control+Alt+Shift`.<br />These values can be extracted using *Division* and *Modulo*. |
| RENDER-GRAPH | v5 | *stdout* **graph** | `RENDER-GRAPH <axis length> <term>` | Renders a mathematical term to a graph. *y=* is not required. |
| RENDER-TABLE | v5 | *stdout* **table**<br />*errorlevel* **selection** | `RENDER-TABLE <mode> <rows> <cols> <cells>...` | Renders a table which width automatically changes depending on the contents. The **cells** are seperated by spaces, and the amount of given cells has to be exactly **rows**\***cols**. Also, the cells should be given in a vertical order. Example:<br /><br />1 2 3 4 5 6 7 8 9 = <br />147<br />258<br />639<br /><br/>Available Modes:<br />`SHOW` - Just shows the table.<br />`SELECT` - Allow the user to select a table cell and returns the number of it in the errorlevel.<br />`EMU-SELECT` - Adds the extra spacing each cell has in `SELECT`, but doesn't actually let the user select something. |
| SLEEP | v3 | *none* | `SLEEP <MS>` | Pauses the script for **MS** Milliseconds. |
| STARTINVISBLE | v3 | *none* | `STARTINVISIBLE <script file>` | When used with `START /B`, this starts a batch-script as invisible. This script can then do whatever you want. When executed, the command writes the PID of the started process to `%temp%\processid.txt`, so you can terminate it with `taskkill` at any time. This may be updated to return the PID in *errorlevel* and not require *start /b* in a future version. |
| STRLEN           |      v1       | *errorlevel* **length** | `STRLEN <String>`                   | Returns the amount of characters in **String** in `%errorlevel%` |
| STRCONTAINS | v5 | *errorlevel* **0/1** | `STRCONTAINS <str1> <str2>` | Checks if **str2** exists within **str1** |
| UTF16 | v5 | *stdout* **character** | `UTF16 <number>` | Displays a UTF16 symbol by its decimal number. |
|  | | *stdout* **list** | `UTF16 list` | Lists all Characters the console can display correctly, which are by far not all. |
| uTIME            |      v2       | *stdout* **epoch-time in milliseconds** | `uTIME`<br />`uTIME -c`             | Returns the current time as Millisecond-Unix-Timestamp. |
|                  |               | |  `uTIME -f <File>`                   | Returns the last modification date for **File** as Millisecond-Unix-Timestamp. |
|                  |               | | `uTIME -fc <File>`                  | Returns the creation date for **File** as Millisecond-Unix-Timestamp. |
| xCOLOR           |      v1       | *none* | `xCOLOR <Color>`                    | Sets the print color to **Color**, as seen in `color`, but only for the text after it. |
| xPRINT           |      v1       | *stdout* **output** | `xPRINT <File>`                     | Reads the **File** as Instructions and executes them all at once. <br /><br />`c00` - `Changes Color. (to 00 in this case.)`<br />`eHello` - `Prints something. ("Hello" in this case.)`<br />`n` - `New line.` |
