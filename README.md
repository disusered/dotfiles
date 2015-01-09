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

- Install XCode

- Install dependencies
  - Install [Homebrew](http://brew.sh/)

  - Install [MacPorts](https://www.macports.org/install.php#source)
    ```bash
    cd ~/Downloads
    tar xjvf MacPorts-2.3.3.tar.bz2
    cd MacPorts-2.3.3
    ./configure --prefix=$HOME/.macports && make && sudo make install
    sudo port -v selfupdate
    ```

  - Configure MacPorts [permissions](http://superuser.com/a/570146/34947)

  - Install packages:
      ```bash
      brew install Caskroom/cask/xquartz \
      ag ack tree git-flow node tmux zsh httpie \
      reattach-to-user-namespace zsh-history-substring-search \
      homebrew/binary/jsl ctags-exuberant hg lua luajit \
      ranger mediainfo highlight atool sxiv mplayer2 \
      libcaca --with-imlib2 rxvt-unicode easy-tag \
      neovim \
      macvim --with-lua --custom-icons \
      vim --with-lua --with-luajit --override-system-vim \
      brew linkapps
      sudo port install w3m +inline_image_imlib2 +inline_image_gtk2 \
      zathura zathura-plugin-pdf-poppler zathura-plugin-cb
      pip install --upgrade setuptools
      pip install --upgrade pip
      pip install neovim
      npm install -g jshint jscs
      ```

- Symlink configs
    ```bash
    ln -s $HOME/.dotfiles/zsh/zshrc .zshrc
    ln -s $HOME/.dotfiles/tmux/tmux.conf .tmux.conf
    ln -s $HOME/.dotfiles/zathura/zathurarc $HOME/.config/zathura/
    ln -s $HOME/.dotfiles/vendor/pure/pure.zsh /usr/local/share/zsh/site-functions/prompt_pure_setup
    ln -s $HOME/.dotfiles/zsh/site-functions/_git /usr/local/share/zsh/site-functions/
    ln -s $HOME/.dotfiles/xorg/Xresources $HOME/.Xresources
    npm completion > $HOME/.dotfiles/vendor/npm
    ln -s .dotfiles/git/gitconfig .gitconfig
    ln -s .dotfiles/git/gitignore_global .gitignore_global
    ln -s .dotfiles/slate/slate .slate
    ln -s .dotfiles/vim .vim
    ln -s .dotfiles/vim .nvim
    ln -s .dotfiles/vim/vimrc .vimrc
    ln -s .dotfiles/vim/vimrc .nvimrc
    ln -s .dotfiles/vim/gvimrc .gvimrc
    ln -s $HOME/.dotfiles/vendor/vim-plug/plug.vim $HOME/.dotfiles/vim/autoload/plug.vim
    ln -s .dotfiles/ag/agignore .agignore
    ln -s .dotfiles/ack/ackrc .ackrc
    ```

## Additional tweaks

#### Update Tmux theme
- Enable tmuxline plugin in vimrc
- :TmuxlineSnapshot! ~/.dotfiles/tmux/tmuxline.conf

#### Set key repeat settings in Karabiner
- Delay Until Repeat: 150ms
- Key Repeat: 20ms
