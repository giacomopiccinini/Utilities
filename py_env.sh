#!/bin/bash

# Get Python version
version=$1

# Get virtual environment name
environment=$2

# Add deadsnakes to install older Python versions
sudo add-apt-repository ppa:deadsnakes/ppa

# Update
sudo apt update

# Install desired Python version
sudo apt install "$version"

# Install virtual env utility for that version
sudo apt install "$version"-venv

# Create the virtual env
$("$version" -m venv "$environment")

# Activate the virtual env
source "$environment"/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install ipykernel to enable jupyter notebooks
pip install ipykernel

# Install the current environment so that it can be used as a Kernel
python -m ipykernel install --user --name="$environment"
