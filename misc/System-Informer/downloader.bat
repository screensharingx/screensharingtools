@echo off
set URL=https://github.com/winsiderss/si-builds/releases/download/4.0.26085.2356/systeminformer-build-canary-setup.exe
set OUT=SystemInformer-Canary-Setup.exe

echo Downloading SystemInformer Canary...
curl -L -o "%OUT%" "%URL%"

if exist "%OUT%" (
    echo Download successful: %OUT%
) else (
    echo Download failed!
)

pause
