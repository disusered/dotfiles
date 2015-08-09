# Dotfiles

## Setup

1. Clone the repository
    ```bash
    git clone --recursive git@github.com:disusered/dotfiles.git ~/.dotfiles
    ```

- Install XCode

- Install [Homebrew](http://brew.sh/)

- Install packages:
    ```bash
    # Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    # Packages
    brew install git git-flow ack ag gpg wget ant watch dict tree \
    ctags httpie nmap htop ranger mediainfo atool tmux highlight \
    gradle pidcat ncdu jq fzf npm --without-npm python watchman \
    lua --universal --with-completion luajit --with-52compat flow \
    reattach-to-user-namespace aspell --with-lang-es --with-lang-en \
    ffmpeg --with-faac --with-fdk-aac --with-openssl --with-tools \
    --with-webp Caskroom/cask/mpv imagemagick --with-fontconfig \
    --with-ghostscript --with-librsvg --with-webp --with-x11 \
    graphicsmagick --with-ghostscript --with-x11 \
    gcc Caskroom/cask/xquartz rxvt-unicode --cc=gcc4.9 \
    xdotool Caskroom/cask/dia links --with-x11 --with-jpeg
    vim --override-system-vi --with-lua --with-luajit --with-tcl \
    weechat --with-aspell --with-curl --with-lua --with-perl \
    --with-python --with-ruby planck ansible
    brew install --HEAD neovim
    # FZF
    $(brew info fzf | grep /install | sed -E "s/([0-9]{1,3}\.){2}[0-9]{1,3}/HEAD/")
    # ZSH
    sudo chpass -s /bin/zsh $USER
    zgen update
    # Node
    curl -L https://npmjs.com/install.sh | sh
    npm update npm -g && npm install -g yo gulp grunt-cli cordova ionic \
    http-server forever ios-deploy ios-sim jscs jshint karma-cli bower \
    node-inspector nodemon phonegap plugman svgo wiredep browserify \
    react-tool syntastic-react david eslint babel-eslint flow-bin csscomb \
    jscs babel-jscs babel eslint-plugin-react mocha jsonlint crconsole \
    nesh caniuse-cmd neovim-client
    nesh --enable nesh-lodash
    nesh --enable tesh-history-search
    npm adduser
    # Python
    pip install --upgrade setuptools
    pip install --upgrade pip
    pip install requests websocket-client pync pafy neovim rainbowstream
    # Ruby
    gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
    \curl -sSL https://get.rvm.io | bash -s stable
    rvm install ruby-2.1.2 ruby-2.2.0 && rvm use 2.2.0
    # htop
    sudo chown root:wheel /usr/local/Cellar/htop-osx/0.8.2.3/bin/htop
    sudo chmod u+s /usr/local/Cellar/htop-osx/0.8.2.3/bin/htop
    # Composer
    curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
    ```

- Symlink configs
    ```bash
    $HOME/.dotfiles/link
    ```

- Configure iTerm
  ![iTerm2 Configuration](https://raw.githubusercontent.com/disusered/dotfiles/docs/images/iterm.png "iTerm2 Configuration")

- Configure XQuartz
  ![XQuartz Configuration](https://raw.githubusercontent.com/disusered/dotfiles/docs/images/xquartz-input.png "iTerm2 Configuration")
  ![XQuartz Configuration](https://raw.githubusercontent.com/disusered/dotfiles/docs/images/xquartz-pasteboard.png "iTerm2 Configuration")

## Additional tweaks

#### Update Tmux theme
- Enable tmuxline plugin in vimrc
- :TmuxlineSnapshot! ~/.dotfiles/tmux/tmuxline.conf

#### Set key repeat settings in Karabiner
- Delay Until Repeat: 150ms
- Key Repeat: 20ms

- TODO - docs: Add to source control
- TODO - weechat - Add gtalk
