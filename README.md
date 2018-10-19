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
Coming Soon™
```

### v4.1
*"the Updating-Update"*
```diff
Comming Soon™
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
| CALCULATOR | v4 | *errorlevel* **result**\**1000000* | `CALCULATOR <mode> <num1> [<num2>]` | Performs mathematical operations. All numbers are inputted as <br />*actual number*\**1000000*, and also outputted as such, to provide decimal place accuracy. |
| | | | `CALCULATOR A <num1> <num2>` | Adds to numbers together. |
| | | | `CALCULATOR S <num1> <num2>` | Subtracts **num2** from **num1**. |
| | | | `CALCULATOR D <num1> <num2>` | Divides **num1** by **num2**. |
| | | | `CALCULATOR M <num1> <num2>` | Multiplies the numbers by each other. |
| | | | `CALCULATOR P <num1> <num2>` | Takes **num1** to the power of **num2**. |
| | | | `CALCULATOR R <num1> <num2>` | Returns the **num2**th root of **num1**. |
| | | | `CALCULATOR F <num>` | Returns **num1**'s factorial. |
| | | | `CALCULATOR I <num>` | Converts any number, which is *not* multiplied by *1000000* and *has* a decimal point to a valid input for the other commands. Both *`,`* and *`.`* as decimal seperators are supported.  |
| CALCULATOR-CMD | v4 | *errorlevel* **result**\**10* | `CALCULATOR-CMD <mode> <num1> [<num2>]` | Has the same functionality as `CALCULATOR`, but the multiplier is only *10*. |
| CALCULATOR-BASIC | v4 | *stdout* **result** | `CALCULATOR-BASIC <operation>` | Computes the operation. Only supports the 4 basic operations, and only supports whole numbers. |
| CONSOLE          |      v3       | *none* |  `CONSOLE cursorsize <0-100>`        | Sets the cursor to the given size. Set to 0 to make it disappear. |
|                  |               | | `CONSOLE windowscroll <x> <y>`      | Scrolls the window to the given point, measured from the top left corner. |
|                  |               | | `CONSOLE windowsize <x> <y>`        | Resizes the window to the given width and height. |
|                  |               | | `CONSOLE clear`                     | Clears the window. |
| | | *stdout* **value** | `CONSOLE get <setting>` | Returns the current value of the settings *cursorsize*, *windowscroll* or *windowsize*. Also, you can get the current window *title* with it. |
| cTIME            |      v2       | *stdout* **timestring** | `cTIME <TIMESTAMP>`                 | Converts a Millisecond-Unix-Timestamp to human-readable time, ready to output. |
| MAKEANIMATION    |      v1       | *stdout* **animation-string** | `MAKEANIMATION <Type> <Sub> [WORD]` | Outputs a valid animation value for the `ANIMATION` command. <br /><br />Types: <br />`Rotate`:<br />`0   -  / - \ \|`<br />`1   -  ^ > V <`<br />`2   -  + x`<br />`3   -  p d b q`<br />`Range`:<br />Returns a set of numbers from 0 to the given number.<br />`Alphabet`:<br />Returns **n** letters of the alphabet. Maximum is 26.<br />`Appear`<br />Accepts the **WORD** Parameter, while a *0* for **Sub** is required. It makes the given word appear one letter at a time. |
| PRINT            |      v1       | *stdout* **string** | `PRINT <String>`                    | Prints the **String**. Only difference to the built-in `echo` is that no newline is added at the end. |
| READKEY | v3 | *errorlevel* **keyCode** | `READKEY <MS>` | Waits **MS** Milliseconds for a keypress, then returns 0. The returned number when a key is pressed consists of two values:<br />Example: `7068`<br />The *68* stands for the <u>KeyCode</u> of the pressed key, in this case *D*. The 7 at the beginning stands for the Modifier-buttons that were pressed:<br />`0 - None, 1 - Alt, 2 - Shift, 3 - Alt+Shift, 4 - Control, 5 - Control+Alt, 6 - Control+Shift, 7 - Control+Alt+Shift`.<br />These values can be extracted using *Division* and *Modulo*. |
| SLEEP | v3 | *none* | `SLEEP <MS>` | Pauses the script for **MS** Milliseconds. |
| STARTINVISBLE | v3 | *none* | `STARTINVISIBLE <script file>` | When used with `START /B`, this starts a batch-script as invisible. This script can then do whatever you want. When executed, the command writes the PID of the started process to `%temp%\processid.txt`, so you can terminate it with `taskkill` at any time. This may be updated to return the PID in *errorlevel* and not require *start /b* in a future version. |
| STRLEN           |      v1       | *errorlevel* **length** | `STRLEN <String>`                   | Returns the amount of characters in **String** in `%errorlevel%` |
| uTIME            |      v2       | *stdout* **epoch-time in milliseconds** | `uTIME`<br />`uTIME -c`             | Returns the current time as Millisecond-Unix-Timestamp. |
|                  |               | |  `uTIME -f <File>`                   | Returns the last modification date for **File** as Millisecond-Unix-Timestamp. |
|                  |               | | `uTIME -fc <File>`                  | Returns the creation date for **File** as Millisecond-Unix-Timestamp. |
| xCOLOR           |      v1       | *none* | `xCOLOR <Color>`                    | Sets the print color to **Color**, as seen in `color`, but only for the text after it. |
| xPRINT           |      v1       | *stdout* **output** | `xPRINT <File>`                     | Reads the **File** as Instructions and executes them all at once. <br /><br />`c00` - `Changes Color. (to 00 in this case.)`<br />`eHello` - `Prints something. ("Hello" in this case.)`<br />`n` - `New line.` |
