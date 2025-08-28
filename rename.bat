@echo off
setlocal

set "sourceDir=<YOUR_PATH>\BigIcons\numbered"
set "targetDir=<YOUR_PATH>\BigIcons\named"
set "csvFile=<YOUR_PATH>\_BigIcons\nums_to_names.csv"

for /f "tokens=1,2 delims=," %%a in (%csvFile%) do (
    set "number=%%a"
echo "!sourceDir!\!number!.png"
    set "name=%%b"
echo "!targetDir!\!name!.png"
    setlocal enabledelayedexpansion
    for %%f in ("!sourceDir!\!number!.png") do (
        move "%%f" "!targetDir!\!name!.png" >nul
    )
    endlocal
)

echo All files copied successfully.
PAUSE
