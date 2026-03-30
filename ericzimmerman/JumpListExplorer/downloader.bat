@echo off
echo Downloading TimelineExplorer.zip...

curl -L -o "TimelineExplorer.zip" "https://download.ericzimmermanstools.com/net9/TimelineExplorer.zip"

if exist "TimelineExplorer.zip" (
    echo Download successful!
) else (
    echo Download failed!
)

pause
