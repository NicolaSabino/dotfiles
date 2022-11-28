## TODO list

Please pick a task from the followings
 
  - [x] create_script: Create `setup.sh` file
  - [ ] create_folder: Create `.dotfiles` folder
  - [ ] no_root: Ensure that `setup.sh` cannot be run in root mode.
  - [ ] create_folde_home:
      Running the script `setup.sh` it creates a copy of .dotfiles in the $HOME folder of the user.
  - [ ] backup_files:
      In script files, perform a backup of all files that are going to be replaced by the script in `$HOME` foler, copying them in `$HOME\.dotfiles`, renaming them
      as `.backupt_****` like `.backup_bashrc`