#!/bin/bash
# Name:       pull.sh
# Maintainer: https://github.com/EvanQuan/dotfiles/
# Version:    0.1.0
#
# Pull
# Updates from repository and moves files to home directory.

# Update from the master branch
git pull origin master

current_directory=$(pwd)
home_directory=~

dotfiles=$current_directory/.*

printf "Updating local files:\n"
for file in $dotfiles; do
    if [ -f $file ]; then
        base_name=$(basename $file)
        home_file=$home_directory/$base_name
        printf "\tCopying $base_name\n"
        cp $file $home_file
    fi
done
printf "DONE\n"
