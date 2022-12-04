# TODO list

List of missing functionalities suitable as firs issue because of their simplicity.

- [x] **create_dev_folder**
- [x] **copy_into_home**
- [x] **create_git_config**
- [x] **backup_files**:

## Good first issue

- [ ] **help**  create an help prompt when running the script without commands
- [ ] **start** run the script only if the user type `./setup.sh --start` or `./setup.sh -s`, otherwise prompt the help message.

## Other tasks

- [ ] **multi_profiles** The user is able to perform the following actions
  - `--start --work` to setup only the work environment
  - `--start --personal` to setup only the personal environment
  - `--start --work --personal` to setup both environment
  - The `--start` command has to precede the environment specifier `--work` or `--personal` 
  - All the parameters can be expressed in a more compact way: `-s -w -p`
  - We can mix parameters in exhaustive and compact form: `-s --work`
  - If the multiple environment is selected we create two sub folders in `dev` called `personal` and `work`.