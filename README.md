# dotfiles

Collection of dotfiles

## Abstarct

The main idea is to have a repository that contains the most usefull and common dotfiles used to quick setun a new linux machine or a WSL system.
Everything has to be self contained in repositpoy and has to be called via a single scritpt `setup.sh`.

## Commit tempalte

Each Commit should follow the followint template
```
[my_feature_name] Short change description

Detailed descrfiption of the feature
```

## How to propose a new feature

1. Fork this project in your git profile.
1. Create a branch following this template, using [snake case](https://it.wikipedia.org/wiki/Snake_case) for the name:  `proposal/my_feature_name`
1. Edit the TODO section of `README.md` file.
1. Create a pull request.

## How to contribute

1. Fork this project in your git profile.
1. Pick one of the missing features.
1. Create a branch following this template, using [snake case](https://it.wikipedia.org/wiki/Snake_case) for the name:  `feature/my_feature_name`
1. Create a pull request 

## TODO list

Please pick a task from the followings
 
  - [x] create_script: Create `setup.sh` file
  - [ ] create_folder: Create `.dotfiles` folder
  - [ ] no_root: Ensure that `setup.sh` cannot be run in root mode.
  - [ ] create_folde_home:
      Running the script `setup.sh` it creates a copy of .dotfiles in the $HOME folder of the user.
  - [ ] backup_files:
      In script files, perform a buckup of all files that start with a . like `.bashrc`
      that are stored in `$HOME` foler, copying themm in `$HOME\.dotfiles`, renaming them
      as `.backupt_****` like `.backup_bashrc`
