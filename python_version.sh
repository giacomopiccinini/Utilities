#!/bin/bash

# Add dead-snakes for older python versions
version=$1

sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt update

sudo apt install "$version"

sudo apt install "$version"-venv

$("$version" -m venv venv)
