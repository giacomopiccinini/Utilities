# Utilities

## make_global

Makes a script available globally in the machine. 

`./make_global <SCRIPT_NAME_WITHOUT_.sh>`

## py_env

Create a virtual python virtual environment of a specified version and name. First, make it available globally using `./make_global py_env`. To launch the py_env script prepend a `source` so as to stay in the shell. 

`source py_env python<X.Y> <VENV_NAME>`

This will create and activate a virtual environment of name <VENV-NAME> with python version X.Y.


