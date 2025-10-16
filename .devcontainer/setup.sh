#!/bin/bash

# Setup script for dev container
# This script configures GitHub CLI authentication using UH_TOKEN

set -e

echo "Running dev container setup..."

# Check if UH_TOKEN is set
if [ -z "$UH_TOKEN" ]; then
    echo "⚠️  Warning: UH_TOKEN environment variable is not set."
    echo "   GitHub CLI authentication will not be configured."
    echo "   To authenticate, set UH_TOKEN or run 'gh auth login' manually."
else
    echo "✅ UH_TOKEN found, configuring GitHub CLI authentication..."
    
    # Authenticate GitHub CLI using the token
    echo "$UH_TOKEN" | gh auth login --with-token
    
    if [ $? -eq 0 ]; then
        echo "✅ GitHub CLI authenticated successfully"
        gh auth status
    else
        echo "❌ Failed to authenticate GitHub CLI with provided token"
    fi
fi

# --- ADD THE FOLLOWING LINES ---
echo "🐍 Setting up Python virtual environment..."
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
echo "✅ Python environment ready."
# -------------------------------

echo "Setup complete!"
