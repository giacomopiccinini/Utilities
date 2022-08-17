#!/bin/bash

ip=$1

start chrome http://$ip:8888

ssh -i Keys/alpha-ireland.pem -o StrictHostKeyChecking=no ubuntu@$ip 

