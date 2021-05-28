#!/bin/bash

# Get all files and dirs
dirs=$(ls $1)

# Creates initial file
echo "File/Directory sizes for directory: $1" | tee sizes.txt

# Loops through files/dirs and gets sizes
for dir in $dirs
do
	# Appends to sizes.txt
	du -sh $1/$dir | tee -a sizes.txt
done