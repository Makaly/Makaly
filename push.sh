#!/bin/bash

# GitHub Profile Push Script
# Run this after creating the repository on GitHub

echo "========================================"
echo "  GitHub Profile Push Script"
echo "========================================"
echo ""

# Check if we're in the right directory
if [ ! -f "README.md" ]; then
    echo "❌ Error: README.md not found!"
    echo "Please run this script from /home/bigdev/Desktop/github-profile/"
    exit 1
fi

echo "📍 Current directory: $(pwd)"
echo ""

# Check git status
echo "📊 Git Status:"
git status
echo ""

# Confirm with user
echo "⚠️  Before running this script, make sure you have:"
echo "   1. Created the repository 'Makaly' on GitHub"
echo "   2. Set it to Public"
echo "   3. NOT initialized it with a README"
echo ""
read -p "Have you done this? (y/n): " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo ""
    echo "Please create the repository first:"
    echo "👉 https://github.com/new"
    echo ""
    echo "Repository name: Makaly"
    echo "Visibility: Public"
    echo ""
    exit 0
fi

echo ""
echo "🚀 Pushing to GitHub..."
echo ""

# Push to GitHub
if git push -u origin main; then
    echo ""
    echo "========================================"
    echo "  ✅ SUCCESS!"
    echo "========================================"
    echo ""
    echo "Your profile is now live at:"
    echo "👉 https://github.com/Makaly"
    echo ""
    echo "Next steps:"
    echo "  1. Visit your profile to see it in action"
    echo "  2. Update social media links in README.md"
    echo "  3. Share your awesome profile!"
    echo ""
else
    echo ""
    echo "========================================"
    echo "  ❌ Push Failed"
    echo "========================================"
    echo ""
    echo "Common issues:"
    echo ""
    echo "1. Repository doesn't exist:"
    echo "   👉 Create it at: https://github.com/new"
    echo ""
    echo "2. SSH key not set up:"
    echo "   👉 Generate: ssh-keygen -t ed25519 -C 'chrismusyoka41@gmail.com'"
    echo "   👉 Add to GitHub: https://github.com/settings/keys"
    echo ""
    echo "3. Want to use HTTPS instead?"
    echo "   Run: git remote set-url origin https://github.com/Makaly/Makaly.git"
    echo ""
fi
