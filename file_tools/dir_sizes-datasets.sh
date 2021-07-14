#!/bin/bash

# Get all files and dirs
dirs=$(sudo ls $1)

# Creates initial file
echo "File/Directory sizes for directory: $1" | tee sizes.txt

# Loops through files/dirs and gets sizes
for dir in $dirs
do
	# Appends to sizes.txt
<<<<<<< HEAD
	# sudo du -sh $1/$dir | tee -a sizes.txt
	#if ! [ "$dir" == "DATASETS" ]
	#then
=======
	if [ "$dir" == "DATASETS" ]
	then
		echo -e "\nProcessing: $1/$dir"
		sudo du -sh $1/$dir | tee -a DATASETS.txt
	fi

	if ! [ "$dir" == "DATASETS" ]
	then
>>>>>>> ed561f2f7257c978ba8d8a1bcfe53f0bb6a67b20
		echo -e "\nProcessing: $1/$dir"
		sudo du -sh $1/$dir | tee -a sizes.txt
	#fi
done
