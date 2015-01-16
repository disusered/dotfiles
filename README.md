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
  - Download [MacPorts](https://www.macports.org/install.php#source)
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
      sudo port install python27 py27-pip python_select gcc49 clang-3.5
      sudo port select --set python python27
      sudo port select --set pip pip27
      sudo port select --set clang mp-clang-3.5
      sudo port select --set gcc mp-gcc49
      sudo pip install --upgrade pip
      sudo pip install --upgrade setuptools
      # MacPorts
      sudo port install w3m +inline_image_imlib2 +inline_image_gtk2 \
        zathura zathura-plugin-pdf-poppler zathura-plugin-cb tmux \
        rxvt-unicode +pixbuf dejavu-fonts bitstream-vera terminus-font \
        xlsfonts mplayer2 xterm +utmp feh toilet go \
        ndcu watch nmap +zenmap dict htop xdotool xev xrandr xwininfo \
        links +x11 libcaca +x11 tree boost +clang35 +regex_match_extra \
        ranger mediainfo highlight atool the_silver_searcher txt2regex \
        git git-flow ack ctags httpie wget apache-ant tmux-pasteboard \
        graphicsmagick imagemagick +lqr +rsvg +wmf cmus +aac +flac \
        python34 py34-pip py34-jinja2 asciidoc py34-pygments py34-pyqt5 \
        zsh mercurial +zsh_completion lua luajit gnupg \
        macvim +cscope +lua +python27 +ruby20 +breakindent \
        vim +cscope +lua +python27 +ruby20 +breakindent
      sudo pip-3.4 install qutebrowser
      # Node
      curl https://raw.githubusercontent.com/creationix/nvm/v0.22.1/install.sh | bash
      nvm install 0.10 && nvm alias default stable
      npm update npm -g && npm install -g yo gulp grunt-cli cordova ionic \
        http-server forever ios-deploy ios-sim jscs jshint karma-cli bower \
        node-inspector nodemon phonegap plugman svgo wiredep browserify
      # Ruby
      gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
      \curl -sSL https://get.rvm.io | bash -s stable
      rvm install ruby-2.1.2 ruby-2.2.0 &&  rvm use 2.2.0
      # ZSH
      sudo chpass -s /Users/carlos/.macports/bin/zsh $USER
      ```

- Symlink configs
    ```bash
    $HOME/.dotfiles/link
    ```

## Additional tweaks

#### Update Tmux theme
- Enable tmuxline plugin in vimrc
- :TmuxlineSnapshot! ~/.dotfiles/tmux/tmuxline.conf

#### Set key repeat settings in Karabiner
- Delay Until Repeat: 150ms
- Key Repeat: 20ms
