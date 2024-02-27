# Dotfiles

Collection of dotfiles for linux systems based on ansible-clone

## Hot to install dotfiles

```bash
sudo apt update
sudo apt install ansible, git
ansible-galaxy collection install community.general
git clone https://github.com/NicolaSabino/dotfiles $HOME/.dotfiles
pushd $HOME/.dotfiles
ansible-playbook -e @values.yml ubuntu.yml
popd
```

## Useful links
* [modular role-based ansible dotfile project](https://github.com/TechDufus/dotfiles/tree/main)
* [free YT ansible course](https://youtube.com/playlist?list=PLT98CRl2KxKEUHie1m24-wkyHpEsa4Y70&si=jyb7DoGIqnJJwrWw)
