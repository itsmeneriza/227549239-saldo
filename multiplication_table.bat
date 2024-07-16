@echo off
setlocal enabledelayedexpansion

rem Prompt user input
set /p num=Enter a positive integer: 

rem Check if input is a valid number
if not defined num (
    echo Invalid entry.
    goto :eof
)

if %num%==0 (
    echo You must enter a non-zero number.
    goto :eof
)

rem Generate and display the multiplication table
echo.
echo Multiplication Table for %num%
echo.

for /L %%i in (1,1,%num%) do (
    set "line="
    for /L %%j in (1,1,%num%) do (
        set /a result=%%i*%%j
        set "line=!line! !result!"
    )
    echo !line!
)

pause
