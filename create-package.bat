@echo off
REM Create deployment package for SahilsWeb

echo 📦 Creating SahilsWeb deployment package...

REM Remove node_modules if it exists (we don't need it in the package)
if exist node_modules (
    echo 🧹 Removing node_modules folder...
    rmdir /s /q node_modules
)

REM Remove package-lock.json (will be regenerated)
if exist package-lock.json (
    del package-lock.json
)

REM Create timestamp for the package
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "datestamp=%dt:~0,8%"

echo 📁 Creating package: SahilsWeb-deployment-%datestamp%.zip

REM Use PowerShell to create ZIP file
powershell -command "Compress-Archive -Path '*.html','*.css','*.js','*.json','*.md','*.bat','*.sh','.gitignore','public' -DestinationPath '../SahilsWeb-deployment-%datestamp%.zip' -Force"

echo ✅ Package created: SahilsWeb-deployment-%datestamp%.zip
echo 📍 Location: %~dp0..\SahilsWeb-deployment-%datestamp%.zip
echo.
echo 🚀 Ready to deploy! Extract the ZIP file on your web server.
pause
