#!/bin/bash  

#Count files and not directories in a directory

ls -1Up $1 | grep -v / | wc -l