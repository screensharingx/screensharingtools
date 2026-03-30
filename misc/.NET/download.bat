@echo off
echo Checking installed .NET versions...

:: Check .NET 4.6.2+ (Release >= 394802)
reg query "HKLM\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full" /v Release | findstr /r "394802" >nul
if %errorlevel%==0 (
    echo .NET 4.6.2 or newer is already installed.
) else (
    echo .NET 4.6.2 not found, downloading...
    curl -L -o "ndp462-kb3151800-x86-x64-allos-enu.exe" "https://download.microsoft.com/download/0/8/2/082F5E9B-8637-4F01-AE6E-9E0A446CFE95/ndp462-kb3151800-x86-x64-allos-enu.exe"
)

:: Check .NET 9 Desktop Runtime
:: Using 'dotnet --list-runtimes' requires .NET CLI installed; fallback to always downloading if not found
dotnet --list-runtimes | findstr /C:"Microsoft.WindowsDesktop.App 9." >nul
if %errorlevel%==0 (
    echo .NET 9 Desktop Runtime already installed.
) else (
    echo .NET 9 Desktop Runtime not found, downloading...
    curl -L -o "dotnet-runtime-9.0-windows-x64.exe" "https://dotnet.microsoft.com/download/dotnet/thank-you/runtime-desktop-9.0.0-windows-x64-installer"
)

echo Done!
pause
