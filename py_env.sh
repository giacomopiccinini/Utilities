#!/bin/bash

# Add dead-snakes for older python versions
version=$1
environment=$2

sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt update

sudo apt install "$version"

sudo apt install "$version"-venv

$("$version" -m venv "$environment")

source "$environment"/bin/activate

pip install --upgrade pip
