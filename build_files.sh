# echo "BUILD START"

#  \emailchecker\mk\Scripts\activate


# python3.9 -m pip install -r requirements.txt 
# python3.9 manage.py collectstatic --noinput --clear
 
#   deactivate

# echo "BUILD STOP"



#!/bin/bash

echo "BUILD START"

# Activate virtual environment
source C:\Users\Lenovo\OneDrive\Desktop\Local_Pr\emailchecker\mk\Scripts\activate || { echo "Failed to activate virtual environment"; exit 1; }

# Install pip if not available
python3.9 -m ensurepip || { echo "Failed to ensure pip is available"; exit 1; }

# Install requirements
python3.9 -m pip install -r requirements.txt || { echo "Failed to install requirements"; exit 1; }

# Collect static files
python3.9 manage.py collectstatic --noinput --clear || { echo "Failed to collect static files"; exit 1; }

# Deactivate virtual environment
deactivate || { echo "Failed to deactivate virtual environment"; exit 1; }

echo "BUILD STOP"


