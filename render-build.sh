#!/bin/bash
set -e  # Exit on errors

# Force Python 3.11.11 using pyenv
PYTHON_VERSION="3.11.11"
curl https://pyenv.run | bash
export PATH="$HOME/.pyenv/bin:$PATH"
pyenv install $PYTHON_VERSION
pyenv global $PYTHON_VERSION

# Install system dependencies
sudo apt-get update && sudo apt-get install -y \
    gfortran libopenblas-dev liblapack-dev

# Install Python dependencies
pip install --upgrade pip
pip install -r requirements.txt
