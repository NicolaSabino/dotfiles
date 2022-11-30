# TODO list

## Good first issue

List of missing functionalities suitable as firs issue because of their simplicity.

- [ ] **create_dev_folder**

    Launching `setup.sh`, it creates the `dev` folder in user's `$HOME` if it does not exits yet.

- [ ] **copy_into_home**

    Launching `setup.sh`, **in any point of the linux file system** will copy the `.dotfiles` folder contained in the repository in the `$HOME` folder of the user.
    Hint, have a look at `pushd` and `popd` bash commands.

- [ ] **create_git_config**

    Create in `.dotfiles` a configuration file got git called `.gitconfig`. The file has to be blank, no content, at this step.

## Other tasks

- [ ] **backup_files**:

    Code the following algorithm, expressed as [pseudo-code](https://en.wikipedia.org/wiki/Pseudocode), in `setup.sh`

    ```
    for each .config_file in .dotfiles
    {
        if .config_file exists in $HOME
        {
            copy .config_file in $HOME/.dotfiles as .backup_config_file
        }
    }
    ```
