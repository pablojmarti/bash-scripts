#!/usr/bin/env bash

# Simple script to remove a given months date range from an apache style log file
# script takes in two arguments 
# 1. File that you want to remove log dates from
# 2. month to be removed

file=$1

# makes the month first letter capitalized
month=$2
declare -c month
month=$month
echo "$month"

for day in {1..31}
do
  sed -i '' "/\[$day\/$month/d" $file
done
