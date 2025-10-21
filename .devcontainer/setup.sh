#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Create a virtual environment if it doesn't exist
if [ ! -d ".venv" ]; then
  echo "Creating virtual environment..."
  python3 -m venv .venv
  
  # Ensure pip is functional and up-to-date within the new venv
  echo "Upgrading pip in the new virtual environment..."
  .venv/bin/python -m pip install --upgrade pip
fi

# Install dependencies into the virtual environment
echo "Installing dependencies from requirements.txt..."
.venv/bin/pip install -r requirements.txt

# Optional: Run Django migrations
echo "Running Django migrations..."
.venv/bin/python manage.py migrate

echo "Setup complete. Your environment is ready!"