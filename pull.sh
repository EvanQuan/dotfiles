#!/bin/bash
# Name:       pull.sh
# Maintainer: https://github.com/EvanQuan/dotfiles/
# Version:    0.2.0
#
# Pull
# Updates from repository, moves files to home directory, and reloads them.

# Update from the master branch
git pull origin master

current_directory=$(pwd)
home_directory=~

dotfiles=$current_directory/.*

# Update files
printf "Updating local files:\n"
for file in $dotfiles; do
    if [ -f $file ]; then
        base_name=$(basename $file)
        home_file=$home_directory/$base_name
        printf "\tCopying $base_name\n"
        cp $file $home_file
    fi
done

# Source files
source $home_directory/.bash_profile
bind -f $home_directory/.inputrc

printf "DONE\n"
