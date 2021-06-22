#!/bin/bash

# Get directory path to delete as only cmd line argument
dir_to_empty=$1

# Sets empty temp dir name and makes it, I hope to god you dont have a dir name like this lol
temp_dir=TEMP_MA_FREAKING_DIR_BRUH-6969
mkdir $temp_dir

# Deletes all files in dir
rsync -a --delete $temp_dir $dir_to_empty

# Removes directories after it has been emptied
rm -rf $dir_to_empty
rm -rf $temp_dir
