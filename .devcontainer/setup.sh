#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Create a virtual environment if it doesn't exist
if [ ! -d ".venv" ]; then
  echo "Creating virtual environment..."
  python3 -m venv .venv
fi

# Activate the virtual environment and install dependencies
echo "Installing dependencies from requirements.txt..."
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

# Optional: Run Django migrations
echo "Running Django migrations..."
python3 manage.py migrate

echo "Setup complete. Your environment is ready!"
