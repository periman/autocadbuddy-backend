#!/bin/bash
set -e  # Exit on any error

# System dependencies (critical for numpy/opencv)
apt-get update && apt-get install -y \
    gfortran \
    libopenblas-dev \
    liblapack-dev \
    libatlas-base-dev \
    libhdf5-dev \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libv4l-dev \
    libxvidcore-dev \
    libx264-dev \
    libgtk-3-dev \
    libcanberra-gtk3-module \
    libsm6 \
    libxext6 \
    libgl1-mesa-glx

# Explicitly upgrade pip/setuptools (Render's default is often outdated)
python -m pip install --upgrade pip setuptools wheel

# Install requirements with NO CACHE (avoid corrupted wheels)
pip install --no-cache-dir -r requirements.txt
