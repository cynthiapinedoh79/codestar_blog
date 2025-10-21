#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Create a virtual environment if it doesn't exist
if [ ! -d ".venv" ]; then
  echo "Creating virtual environment..."
  python3 -m venv .venv
fi

# Install dependencies into the virtual environment
echo "Installing dependencies from requirements.txt..."
.venv/bin/python -m pip install --upgrade pip
.venv/bin/pip install -r requirements.txt

# Optional: Run Django migrations
echo "Running Django migrations..."
.venv/bin/python manage.py migrate