#!/bin/bash
# Quick deployment script for SahilsWeb

echo "🚀 SahilsWeb Quick Deploy Script"
echo "================================"

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install Node.js first."
    exit 1
fi

echo "📦 Installing dependencies..."
npm install

echo "🔧 Building for production..."
npm run build

echo "🎉 Build complete!"
echo ""
echo "Next steps:"
echo "1. Upload the 'dist' folder to your web server"
echo "2. Or run 'npm run preview' to test the build locally"
echo "3. Or run 'vercel' to deploy to Vercel"
echo ""
echo "✅ Deployment files ready!"
