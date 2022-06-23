#!/bin/bash

script=$1

chmod +x "$script".sh

sudo cp "$script".sh /bin/"$script"
