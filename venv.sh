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

# Basic libraries we will use
echo "black" >> requirements.txt
echo "pipreqs" >> requirements.txt
echo "numpy" >> requirements.txt
echo "pre-commit" >> requirements.txt
echo "tqdm" >> requirements.txt
echo "python-decouple" >> requirements.txt

# Install requirements
pip install -r requirements.txt

# Create precommits
echo "repos:" >> .pre-commit-config.yaml
echo "  - repo: https://github.com/psf/black" >> .pre-commit-config.yaml
echo "    rev: stable" >> .pre-commit-config.yaml
echo "    hooks:" >> .pre-commit-config.yaml
echo "      - id: black" >> .pre-commit-config.yaml
echo "        language_version: "$pversion >> .pre-commit-config.yaml

if 	git rev-parse --is-inside-work-tree; then
    # Install precommit
    pre-commit install
    # Add few things to gitignore
    echo "*.ipynb" >> .gitignore
    echo "*.jpg" >> .gitignore
    echo "*.png" >> .gitignore
    echo "*.mp4" >> .gitignore
    echo "*.hdf5" >> .gitignore
    echo "*.pt" >> .gitignore
    echo "*.pth" >> .gitignore
    echo ".ipynb_checkpoints" >> .gitignore
    echo "__pycache__" >> .gitignore
    echo "venv" >> .gitignore
    echo ".env" >> .gitignore
    echo ".pytest_cache" >> .gitignore
    echo "*.mp3" >> .gitignore
    echo "*.wav" >> .gitignore
else
    echo "Not a git repository"
fi;