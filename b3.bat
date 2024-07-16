@echo off
rem Neriza A. Saldo
rem +++++++++++++++++++++++++

:menu
echo Select a Windows utility to execute:
echo 1. ipconfig
echo 2. tasklist/taskkill
echo 3. chkdsk
echo 4. format
echo 5. defrag
echo 6. find
echo 7. attrib
set /p choice="Enter your choice: "

if "%choice%"=="1" (
    ipconfig
) else if "%choice%"=="2" (
    echo 1. tasklist
    echo 2. taskkill
    set /p taskchoice="Enter your choice (1/2): "
    if "%taskchoice%"=="1" (
        tasklist
    ) else if "%taskchoice%"=="2" (
        set /p pid="Enter the PID of the process to kill: "
        taskkill /PID %pid%
    ) else (
        echo Invalid choice.
        goto menu
    )
) else if "%choice%"=="3" (
    set /p drive="Enter the drive letter (e.g., C:): "
    chkdsk %drive%
) else if "%choice%"=="4" (
    set /p drive="Enter the drive letter to format (e.g., E:): "
    format %drive%
) else if "%choice%"=="5" (
    set /p drive="Enter the drive letter to defrag (e.g., C:): "
    defrag %drive%
) else if "%choice%"=="6" (
    set /p search="Enter the search term: "
    set /p file="Enter the file to search in: "
    find "%search%" "%file%"
) else if "%choice%"=="7" (
    set /p file="Enter the file to change attributes: "
    set /p attr="Enter the attributes (e.g., +r -h): "
    attrib %attr% "%file%"
) else (
    echo Invalid choice.
    goto menu
)

exit
