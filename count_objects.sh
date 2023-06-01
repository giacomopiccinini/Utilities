#!/bin/bash

aws s3 ls $1 --recursive | wc -l 
