# Dotfiles

Collection of dotfiles for linux systems based on ansible-clone

## Hot to install dotfiles

```bash
sudo apt update
sudo apt install ansible
ansible-galaxy collection install community.general
ansible-pull \
    -o \
    -e @values.yml \
    -U https://github.com/NicolaSabino/dotfiles \
    ubuntu.yml
```

## Useful links
* [modular role-based ansible dotfile project](https://github.com/TechDufus/dotfiles/tree/main)
* [free YT ansible course](https://youtube.com/playlist?list=PLT98CRl2KxKEUHie1m24-wkyHpEsa4Y70&si=jyb7DoGIqnJJwrWw)
