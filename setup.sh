#!/bin/bash

test=1 # set to 1 to run in test mode

target_dev_name='dev'
target_dot_name='.dotfiles'

# Suitable matching patterns for dev target
# - Dev
# - Devel
# - Develop
# - Development
# - dev
# - devel
# - develop
# - development
dev_regex='.*/[D|d]ev\(el\)*\(op\)*\(ment\)*$'

home=$HOME

if [ test ]
then
    echo "Using test environment"
    if [ ! -d test ] ; then mkdir test ; fi
    $HOME=test
fi

# Find the `dev` directory in $home
dev_dir_path=`find $home -type d -regex "${dev_regex}" -print -quit`

# Find the `.dotfiles` folder
dot_dir_path=`find $home -maxdepth 1 -type d -name ${target_dot_name}`

# If `dev` folder does not exists in $home create it
if [ "$dev_dir_path" != "" ]
then
    echo "Found dev enviromnet in ${dev_dir_path}"
else
    dev_dir_path=$target_dev_name
    echo "Create new ${target_dev_name} directory"
    mkdir $home/$target_dev_name
fi

# Check if `.dotfiles` exists
if [ "$dot_dir_path" != "" ]
then 
    echo "Found dotfiles folder ${dot_dir_path}"
else
    echo "Create new ${target_dot_name} directory"
    cp  -r .dotfiles $home/$target_dot_name
fi

# Sync .dotfiles and $home/.dotfiles folders
# If a file already exists we create a 
# backup copy with datetime
for file in `find .dotfiles/ -maxdepth 1 -type f -name ".*"`
do
    if [ -f $dot_dir_path ]
    then
    echo ciao
    fi
done
