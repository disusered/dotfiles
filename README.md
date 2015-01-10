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
  - Install [MacPorts](https://www.macports.org/install.php#source)
    ```bash
    cd ~/Downloads
    tar xjvf MacPorts-2.3.3.tar.bz2
    cd MacPorts-2.3.3
    ./configure --prefix=$HOME/.macports && make && sudo make install
    sudo port -v selfupdate
    ```

  - Configure MacPorts [permissions](http://superuser.com/a/570146/34947)

  - Install [Android SDK](https://developer.android.com/sdk/installing/index.html?pkg=tools) and update `$PATH` and `$ANDROID_HOME`.

  - Install packages:
      ```bash
      sudo port install python27 py27-pip python_select ruby22 +doc
      sudo port select --set python python27
      sudo port select --set pip pip27
      sudo port select --set ruby ruby22
      sudo port select --set clang mp-clang-3.5
      sudo port install w3m +inline_image_imlib2 +inline_image_gtk2 \
        zathura xathura-plugin-pdf-poppler zathura-plugin-cb tmux \
        xlsfonts mplayer2 rxvt-unicode xterm +utmp feh easytag \
        links +x11 libcaca +x11 tree boost +clang35 +regex_match_extra \
        ranger mediainfo highlight atool the_silver_searcher \
        git git-flow ack ctags httpie wget apache-ant tmux-pasteboard \
        graphicsmagick imagemagick +lqr +rsvg +wmf cmus +aac +flac \
        zsh mercurial +zsh_completion lua luajit nodejs +dtrace \
        macvim +cscope +lua +python27 +ruby20 +breakindent \
        vim +cscope +lua +python27 +ruby20 +breakindent
      npm install -g jshint jscs
      sudo chpass -s /Users/carlos/.macports/bin/zsh $USER
      ```

- Symlink configs
    ```bash
    ln -s $HOME/.dotfiles/zsh/zshrc .zshrc
    ln -s $HOME/.dotfiles/tmux/tmux.conf .tmux.conf
    ln -s $HOME/.dotfiles/zathura/zathurarc $HOME/.config/zathura/
    ln -s $HOME/.dotfiles/cmus/autosave $HOME/.config/cmus/autosave
    ln -s $HOME/.dotfiles/vendor/pure/pure.zsh /usr/local/share/zsh/site-functions/prompt_pure_setup
    ln -s $HOME/.dotfiles/zsh/site-functions/_git /usr/local/share/zsh/site-functions/
    ln -s $HOME/.dotfiles/xorg/Xresources $HOME/.Xresources
    npm completion > $HOME/.dotfiles/vendor/npm
    ln -s .dotfiles/git/gitconfig .gitconfig
    ln -s .dotfiles/git/gitignore_global .gitignore_global
    ln -s .dotfiles/slate/slate .slate
    ln -s .dotfiles/vim .vim
    ln -s .dotfiles/vim/vimrc .vimrc
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
