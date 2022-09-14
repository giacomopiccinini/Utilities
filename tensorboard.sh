#!/bin/bash

ip=$1

start chrome http://localhost:6006

ssh -i Keys/alpha-ireland.pem -N -f -L 6006:localhost:6006 ubuntu@$1

