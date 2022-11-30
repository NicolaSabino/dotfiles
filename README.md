# Dotfiles

Collection of dotfiles for linux systems.

The main idea is to have a repository to fork on new linux systems to prepare quickly the environment.

This is a simple git project aimed to introduce new comers to open-source, pull requests, contribution and coding.
Have a look [CONTRIBUTING.md](CONTRIBUTING.md) for more details on how to contribute.

## Project requirements

1. Everything has to be self contained in repository and has to be called via a single script `setup.sh`.

2. All configurations file has to be stored in a folder called `.dotfiles`

3. Each time we run `setup.sh` it has to create a backup of all config files that are going to be changed.
