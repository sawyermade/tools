#!/bin/bash

# Get all files and dirs
dirs=$(sudo ls $1)

# Creates initial file
echo "File/Directory sizes for directory: $1" | tee sizes.txt

# Loops through files/dirs and gets sizes
for dir in $dirs
do
	# Appends to sizes.txt
	# sudo du -sh $1/$dir | tee -a sizes.txt
	if ! [ "$dir" == "DATASETS" ]
	then
		echo -e "Processing: $dir\n"
		sudo du -sh $1/$dir | tee -a sizes.txt
	fi
done