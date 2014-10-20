# Dotfiles

## Setup

1. Clone the repository
    ```bash
    git clone git@github.com:disusered/dotfiles.git ~/.dotfiles
    ```

- Check out submodules
    ```bash
    git submodule update --init --recursive
    ```

- Configure iTerm
  ![iTerm2 Configuration](https://raw.githubusercontent.com/disusered/dotfiles/docs/images/iterm.png "iTerm2 Configuration")

- Install dependencies
    ```bash
    brew install ag ack tree git-flow node ruby tmux zsh httpie \
    reattach-to-user-namespace zsh-history-substring-search \
    macvim --with-cscope --with-lua --override-system-vim
    brew link macvim && brew linkapps
    npm install -g jshint
    ```

- Symlink configs
    ```bash
    ln -s .dotfiles/tmux/tmux.conf .tmux.conf
    ln -s $HOME/.dotfiles/vendor/pure/pure.zsh /usr/local/share/zsh/site-functions/prompt_pure_setup
    ln -s .dotfiles/zsh/zshrc .zshrc
    ln -s .dotfiles/ag/agignore .agignore
    ln -s .dotfiles/ack/ackrc .ackrc
    ln -s .dotfiles/git/gitconfig .gitconfig
    ln -s .dotfiles/git/gitignore_global .gitignore_global
    ln -s .dotfiles/slate/slate .slate
    ln -s .dotfiles/vim .vim
    ln -s .dotfiles/vim/vimrc .vimrc
    ln -s .dotfiles/vim/gvimrc .gvimrc
    ```

## Additional tweaks

#### Set key repeat settings in Karabiner
- Delay Until Repeat: 150ms
- Key Repeat: 20ms
