#/bin/bash

# Get Python version
version=$1
pversion="python$version"

# Install desired Python version
sudo apt install "$pversion"

# Install virtual env utility for that version
sudo apt install "$pversion"-venv

# Create the virtual env
$("$pversion" -m venv venv)

# Activate the virtual env
source venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install ipykernel to enable jupyter notebooks
pip install ipykernel

# Get environment name to be the name of the directory
environment=$(basename "$PWD")

# Install the current environment so that it can be used as a Kernel
python -m ipykernel install --user --name="$environment"

# Install requirements
pip install -r requirements.txt
