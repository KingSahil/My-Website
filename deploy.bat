@echo off
REM Quick deployment script for SahilsWeb (Windows)

echo 🚀 SahilsWeb Quick Deploy Script
echo ================================

REM Check if npm is installed
where npm >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ❌ npm is not installed. Please install Node.js first.
    pause
    exit /b 1
)

echo 📦 Installing dependencies...
call npm install

echo 🔧 Building for production...
call npm run build

echo 🎉 Build complete!
echo.
echo Next steps:
echo 1. Upload the 'dist' folder to your web server
echo 2. Or run 'npm run preview' to test the build locally
echo 3. Or run 'vercel' to deploy to Vercel
echo.
echo ✅ Deployment files ready!
pause
