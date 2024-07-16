@echo off
rem Neriza A. Saldo
rem +++++++++++++++++++++++++
setlocal enabledelayedexpansion

rem Shape Selection Options
echo Select a shape:
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
set /p shape="Enter your choice: "

if "%shape%"=="1" (
    rem Circle
    set /p radius="Enter the radius of the circle: "
    set /a area=314*radius*radius/100
    echo The area of the circle is: !area!
) else if "%shape%"=="2" (
    rem Triangle
    set /p a="Enter the length of the first side: "
    set /p b="Enter the length of the second side: "
    set /p c="Enter the length of the third side: "

    set /a s=(a+b+c)/2
    set /a area=!s!*!s-a*!*!s-b*!*!s-c!
    set /a area_sqrt=%area%^(1/2)

    echo The area of the triangle is: !area_sqrt!

    if "%a%"=="%b%" if "%b%"=="%c%" (
        echo The triangle is equilateral.
    ) else if "%a%"=="%b%" if not "%b%"=="%c%" (
        echo The triangle is isosceles.
    ) else if not "%a%"=="%b%" if not "%b%"=="%c%" (
        echo The triangle is scalene.
    )
) else if "%shape%"=="3" (
    rem Quadrilateral
    set /p length="Enter the length: "
    set /p width="Enter the width: "

    set /a area=length*width
    echo The area of the quadrilateral is: !area!

    if "%length%"=="%width%" (
        echo The quadrilateral is a square.
    ) else (
        echo The quadrilateral is a rectangle.
    )
) else (
    echo Invalid choice.
)

exit