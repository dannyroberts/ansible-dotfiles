# ansible-dotfiles
bash aliases and other dotfiles for our ansible control machines

To "install" these dotfiles, in the home directory of your target user (on your target machine),
run

```bash
git clone https://github.com/dannyroberts/ansible-dotfiles
ansible-dotfiles/install.sh
```

This will symlink all managed dotfiles to their convential places in your home directory, and will **overwrite** any corresponding dotfiles.
