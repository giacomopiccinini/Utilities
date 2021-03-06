# Utilities

## make_global

Makes a script available globally in the machine. 

`./make_global <SCRIPT_NAME_WITHOUT_.sh>`

## py_env

Create a virtual python virtual environment of a specified version and name. First, make it available globally using `./make_global py_env`. To launch the py_env script prepend a `source` so as to stay in the shell. 

`source py_env python<X.Y> <VENV_NAME>`

This will create and activate a virtual environment of name `<VENV-NAME>` with python version X.Y.

## git_hub

Download GitHub CLI and authenticate so that you do not have to insert your credentials everytime. 

`./git_hub`

Then follow the instructions:
1. Authenticate via GitHub.com
2. Choose HTTPS
3. Press Y
4. Authenticate via browser
6. Copy the 8 alphanumeric code
7. Paste it in `https://github.com/login/device/`

## requirements

Create a `requirements.txt` file in the directory where it is launched from

`requirements`