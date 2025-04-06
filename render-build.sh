#!/bin/bash
apt-get update && apt-get install -y gfortran libopenblas-dev liblapack-dev
pip install -r requirements.txt
