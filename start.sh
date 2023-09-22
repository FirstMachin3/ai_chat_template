#!/bin/bash

# Create a Python virtual environment named "env"
python3 -m venv env

# Activate the virtual environment
source env/bin/activate

#Install requirements
pip install flask
pip install openai
pip install gunicorn

# Start App
gunicorn -b 0.0.0.0:5000 app:app




