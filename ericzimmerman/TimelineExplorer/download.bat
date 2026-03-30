@echo off
set URL=https://download.ericzimmermanstools.com/net9/TimelineExplorer.zip
set ZIP=TimelineExplorer.zip

echo Downloading to current directory...
curl -L -o "%CD%\%ZIP%" %URL%

if not exist "%CD%\%ZIP%" (
    echo Download failed!
    pause
    exit /b
)

echo Extracting in current directory...
powershell -Command "Expand-Archive -Path '%CD%\%ZIP%' -DestinationPath '%CD%' -Force"

echo Done!
pause
