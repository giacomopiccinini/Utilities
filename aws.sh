#!/bin/bash

ip=$1

ssh -i Keys/alpha-ireland.pem -o StrictHostKeyChecking=no ubuntu@$ip 

