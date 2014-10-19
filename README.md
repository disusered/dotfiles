# Dotfiles

1. Clone the repository
    ```bash
    git clone git@github.com:disusered/dotfiles.git ~/.dotfiles
    ```

- Check out submodules

- Install dependencies
    ```bash
    brew install ag ack git-flow node ruby tmux zsh reattach-to-user-namespace
    brew install macvim --with-cscope --with-lua --override-system-vim
    brew link macvim
    ```

- Configure shell
    ```bash
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
    ```

- Symlink configs
