#!/bin/bash
set -e  # Exit immediately on errors

# Step 1: Install pyenv dependencies
apt-get update && apt-get install -y \
    make \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    wget \
    curl \
    llvm \
    libncurses5-dev \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libffi-dev \
    liblzma-dev \
    git

# Step 2: Install pyenv without sudo
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc

# Load pyenv into current shell
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Step 3: Install and set Python 3.11.11
pyenv install 3.11.11 --force
pyenv global 3.11.11

# Step 4: Verify Python version
python --version  # Should output "Python 3.11.11"

# Step 5: Install project dependencies
pip install --upgrade pip
pip install -r requirements.txt
