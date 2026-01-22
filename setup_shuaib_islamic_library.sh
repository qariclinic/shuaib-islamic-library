#!/bin/bash

# Project Name
PROJECT="shuaib-islamic-library"

echo "📁 Creating project structure..."

# Root folder
mkdir -p $PROJECT
cd $PROJECT || exit

# Main files
touch index.html about.html contact.html privacy.html terms.html

# Directories
mkdir -p css js assets audio pdf android firebase screenshots

# CSS / JS files
touch css/style.css
touch js/script.js
touch js/quran.js
touch js/hadith.js
touch js/ai.js

# Data files
touch js/quran.json
touch js/hadith.json

# Android structure
mkdir -p android/app/src/main/java/com/shuaib/islamiclibrary
mkdir -p android/app/src/main/res/layout
touch android/app/src/main/AndroidManifest.xml
touch android/app/src/main/java/com/shuaib/islamiclibrary/MainActivity.java
touch android/app/src/main/res/layout/activity_main.xml

# Firebase
touch firebase/firebase-config.js

# README for GitHub
cat <<EOF > README.md
# Shuaib Islamic Online Library

📖 A complete Islamic digital library platform.

## Features
- Quran (Text + Audio)
- Hadith (Sahih Books)
- Fiqh & Islamic Books
- AI Islamic Q&A (Guidance Based)
- Madrasa / Jamia Portal
- Dark Mode
- Multi-language
- Android App (Play Store Ready)

Developer:
Hafiz Mufti Muhammad Shuaib Khan Alai

Purpose:
Educational & Islamic Knowledge Only
EOF

echo "🗜️ Creating ZIP for GitHub..."

cd ..
zip -r ${PROJECT}.zip $PROJECT

echo "✅ DONE!"
echo "📦 ZIP File Created: ${PROJECT}.zip"
