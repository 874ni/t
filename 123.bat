@echo off

echo Copying files...
rclone copy D:\DL\up\canan D:\cope\GTArar\canan --cache-chunk-size 1024M --buffer-size 2048M --transfers 16 --checkers 8

echo Moving files...
dir /b "D:\DL\up\canan" | findstr /r "^" >nul
if %errorlevel% equ 0 (
    rclone move D:\DL\up\canan\ asia:/GTArar/canan/ --cache-chunk-size 1024M --buffer-size 2048M --transfers 16 --checkers 8
) else (
    echo No files to move in "D:\DL\up\canan"
)

echo Copying files...
rclone copy D:\DL\up\macoto D:\cope\GTArar\macoto --cache-chunk-size 1024M --buffer-size 2048M --transfers 16 --checkers 8

echo Moving files...
dir /b "D:\DL\up\macoto" | findstr /r "^" >nul
if %errorlevel% equ 0 (
    rclone move D:\DL\up\macoto\ asia:/GTArar/macoto/ --cache-chunk-size 1024M --buffer-size 2048M --transfers 16 --checkers 8
) else (
    echo No files to move in "D:\DL\up\macoto"
)

echo Copying files...
rclone copy D:\DL\up\necoma D:\cope\GTArar\necoma --cache-chunk-size 1024M --buffer-size 2048M --transfers 16 --checkers 8

echo Moving files...
dir /b "D:\DL\up\necoma" | findstr /r "^" >nul
if %errorlevel% equ 0 (
    rclone move D:\DL\up\necoma\ asia:/GTArar/necoma/ --cache-chunk-size 1024M --buffer-size 2048M --transfers 16 --checkers 8
) else (
    echo No files to move in "D:\DL\up\necoma"
)

echo Copying files...
rclone copy D:\DL\up\rizunya D:\cope\GTArar\rizunya --cache-chunk-size 1024M --buffer-size 2048M --transfers 16 --checkers 8

echo Moving files...
dir /b "D:\DL\up\rizunya" | findstr /r "^" >nul
if %errorlevel% equ 0 (
    rclone move D:\DL\up\rizunya\ asia:/GTArar/rizunya/ --cache-chunk-size 1024M --buffer-size 2048M --transfers 16 --checkers 8
) else (
    echo No files to move in "D:\DL\up\rizunya"
)

echo Copying files...
rclone copy D:\DL\up\uise D:\cope\GTArar\uise --cache-chunk-size 1024M --buffer-size 2048M --transfers 16 --checkers 8

echo Moving files...
dir /b "D:\DL\up\uise" | findstr /r "^" >nul
if %errorlevel% equ 0 (
    rclone move D:\DL\up\uise\ asia:/GTArar/uise/ --cache-chunk-size 1024M --buffer-size 2048M --transfers 16 --checkers 8
) else (
    echo No files to move in "D:\DL\up\uise"
)

echo Moving files...
dir /b "D:\DL\up\up" | findstr /r "^" >nul
if %errorlevel% equ 0 (
    rclone move D:\DL\up\up\ rj: --cache-chunk-size 1024M --buffer-size 2048M --transfers 16 --checkers 8
) else (
    echo No files to move in "D:\DL\up\up"
)

echo Done.
