# SahilsWeb - Website Deployment Files

This folder contains all the essential files needed to run the SahilsWeb website.

## 📁 Contents

### Core Files
- `index.html` - Main HTML file (entry point)
- `style.css` - All CSS styling with modern features
- `main.js` - JavaScript functionality and interactivity
- `firebase-config.js` - Firebase authentication configuration

### Configuration Files
- `package.json` - Node.js dependencies and scripts
- `vite.config.js` - Vite build tool configuration
- `vercel.json` - Vercel deployment configuration

### Assets (`public/` folder)
- `manifest.json` - PWA manifest for mobile app features
- `sw.js` - Service worker for offline functionality
- `icon-*.svg` - App icons for different platforms
- `favicon.svg` - Website favicon
- `firebase-config.js` - Public Firebase config (backup)
- `libs/firebase-fallback.js` - Firebase fallback library

## 🚀 How to Run

### Option 1: Development Server (Recommended)
```bash
# Install dependencies
npm install

# Start development server
npm run dev
```
Then open: http://localhost:5173

### Option 2: Build for Production
```bash
# Install dependencies
npm install

# Build for production
npm run build

# Preview production build
npm run preview
```

### Option 3: Static File Server
You can also serve the files directly using any static file server:
- Python: `python -m http.server 8000`
- Node.js: `npx serve .`
- PHP: `php -S localhost:8000`

## 🌐 Deployment Options

### Vercel (Recommended)
1. Install Vercel CLI: `npm i -g vercel`
2. Run: `vercel`
3. Follow the prompts

### Netlify
1. Drag and drop this folder to Netlify
2. Or connect your Git repository

### Firebase Hosting
1. Install Firebase CLI: `npm i -g firebase-tools`
2. Run: `firebase init hosting`
3. Run: `firebase deploy`

## 🔧 Dependencies

The website uses these external libraries (loaded via CDN):
- Firebase SDK v9+ (Authentication & Firestore)
- Font Awesome icons
- Google Fonts

## ✨ Features Included

- 🔐 Firebase Authentication (Google OAuth + Email/Password)
- 🎮 Built-in Games (Tic-tac-toe, Snake, Memory)
- 💬 AI Chatbot Integration
- 🧮 Calculator
- 📝 Notepad with file management
- 🎵 Video/Audio Player
- 📱 Responsive Design
- 🌙 Dark/Light Theme Toggle
- 🔄 Progressive Web App (PWA) Features

## 🔥 Firebase Setup

Make sure your Firebase project has:
1. Authentication enabled (Google & Email/Password providers)
2. Firestore database created
3. Authorized domains added for your hosting domain

## 🛠️ Tech Stack

- **Frontend**: Vanilla JavaScript, Modern CSS, HTML5
- **Build Tool**: Vite
- **Backend**: Firebase (Auth + Firestore)
- **Deployment**: Vercel/Netlify/Firebase Hosting
- **PWA**: Service Worker + Web App Manifest

## 📞 Support

If you need help with deployment, check the main project documentation or create an issue in the repository.

---
Generated on: August 6, 2025
