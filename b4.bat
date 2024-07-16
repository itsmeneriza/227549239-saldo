@echo off
rem Neriza A. Saldo
rem +++++++++++++++++++++++++
rem Sort text files on Drive C: by date
for /f "tokens=*" %%A in ('dir /b /o:d /a:-d C:\*.txt') do (
    echo %%A
)

rem Archive older files to a folder on Drive Z:
set /p date="Enter the cutoff date (MM-DD-YYYY): "
for /f "tokens=*" %%A in ('dir /b /a:-d /o:d /t:w C:\*.txt') do (
    call :check_and_move "%%~tA" "%%A"
)

rem Sort archived files by size
for /f "tokens=*" %%A in ('dir /b /o:s /a:-d Z:\archive\*.txt') do (
    echo %%A
)

rem Prompt the user for permission to delete the old, large files
set /p confirm="Do you want to delete the old, large files? (y/n): "
if /i "%confirm%"=="y" (
    for /f "tokens=*" %%A in ('dir /b /a:-d /o:s Z:\archive\*.txt') do (
        del "Z:\archive\%%A"
    )
) else (
    echo No files were deleted.
)

exit

:check_and_move
set filedate=%~1
set filename=%~2
if "%filedate%" LSS "%date%" (
    move "C:\%filename%" "Z:\archive\"
)
goto :eof