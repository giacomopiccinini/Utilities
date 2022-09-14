#!/bin/bash

# Clear outputs from notebook (ideally before pushing to git)

list=($(find "$PWD" | grep .ipynb | grep -v checkpoints)) 

for str in ${list[@]}; do
  jupyter nbconvert --clear-output --inplace $str
done