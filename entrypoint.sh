#!/bin/sh -l

echo "Hello $1"
apt-get install curl
echo foo | curl -s -F "content=<-" http://dpaste.com/api/v2/
time=$(date)
echo "::set-output name=time::$time"
