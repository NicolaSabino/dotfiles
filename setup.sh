#!/bin/bash

alias TRUE=1
alias FALSE=0
test=TRUE # set to 1 to run in test mode

target_dev_name='dev'
target_dot_name='.dotfiles'
home_target=$HOME

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


if [ test ]
then
    printf "Using test environment\n"
    if [ ! -d test ] ; then mkdir test ; fi
    home_target='test'
fi

# Find the `dev` directory in $home_target
dev_dir_path=`find $home_target -type d -regex "${dev_regex}" -print -quit`

# Find the `.dotfiles` folder
dot_dir_path=`find $home_target -maxdepth 1 -type d -name ${target_dot_name}`

# If `dev` folder does not exists in $home_target create it
printf "Searching for ${target_dev_name} target\n"
if [ "$dev_dir_path" != "" ]
then
    printf "\tFound dev enviromnet in ${dev_dir_path}\n"
else
    dev_dir_path=$target_dev_name
    printf "\tCreate new ${target_dev_name} directory\n"
    mkdir $home_target/$target_dev_name
fi

# Check if `.dotfiles` exists
dotfiles_exists=FALSE
printf "Searching for ${target_dot_name} target\n"
if [ "$dot_dir_path" != "" ]
then 
    printf "\tFound dotfiles folder ${dot_dir_path}\n"
    dotfiles_exists=TRUE
else
    printf "\tCreate new ${target_dot_name} directory\n"
    cp  -r config_files $home_target/$target_dot_name
fi

# Sync .dotfiles and $home_target/.dotfiles folders
# If a file already exists we create a echo $dot_dir_path
# backup copy with datetime
if [ $dotfiles_exists == TRUE ]
then 
    printf "Sync of config files\n"
    for file in `find config_files -maxdepth 1 -type f -name ".*"`
    do
        file_name=`basename $file`

        if [ `find $dot_dir_path -maxdepth 1 -type f -name $file_name -print -quit` ] 
        then 
            # file already exists 
            # create a backup copy
            printf "\tCreate backup of ${file_name}\n"
            pushd $dot_dir_path > /dev/null
                mv $file_name ".backup_${file_name:1}"
            popd > /dev/null
        fi

        printf "\tCopy of ${file_name} in ${dot_dir_path}\n"
        cp $file $dot_dir_path

    done
fi


