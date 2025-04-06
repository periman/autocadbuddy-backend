#!/bin/bash
# Install system dependencies
apt-get update && apt-get install -y gfortran libopenblas-dev liblapack-dev
# Install Python dependencies
pip install -r requirements.txt
