# Dotfiles

1. Clone the repository
    ```bash
    git clone git@github.com:disusered/dotfiles.git ~/.dotfiles
    ```

- Configure iTerm
  ![iTerm2 Configuration](https://raw.githubusercontent.com/disusered/dotfiles/docs/images/iterm.png "iTerm2 Configuration")

- Check out submodules

- Install dependencies
    ```bash
    brew install ag ack tree git-flow node ruby tmux zsh reattach-to-user-namespace
    brew install macvim --with-cscope --with-lua --override-system-vim
    brew link macvim && brew linkapps
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
    git clone https://github.com/zsh-users/zsh-history-substring-search.git .config/zsh-history-substring-search
    ```

- Symlink configs
    ```bash
    ln -s .dotfiles/tmux/tmux.conf .tmux.conf
    ln -s .dotfiles/zsh/zshrc .zshrc
    ln -s .dotfiles/ag/agignore .agignore
    ln -s .dotfiles/ack/ackrc .ackrc
    ln -s .dotfiles/git/gitconfig .gitconfig
    ln -s .dotfiles/git/gitignore_global .gitignore_global
    ln -s .dotfiles/slate/slate .slate
    ```
