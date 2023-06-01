#!/bin/bash

# Clear outputs from notebook (ideally before pushing to git)

list=($(find "$PWD" | grep .ipynb_checkpoints)) 

for str in ${list[@]}; do
  rm -r $str
done