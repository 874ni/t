@echo off
cd /d D:\DL\code\t

setlocal enabledelayedexpansion

set "file=D:\DL\code\t\123.bat"

if not exist "%file%" (
    echo 
    exit /b
)

echo A>>"%file%"

endlocal

git add 123.bat

git commit -m "123"

git push origin main