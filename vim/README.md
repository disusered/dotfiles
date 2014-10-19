# Vim

## Set key repeat settings in Karabiner

- Delay Until Repeat: 150ms
- Key Repeat: 20ms

## Install Vim with Lua support

`brew install vim --with-lua`

## Install Dependencies

```bash
$ brew install ag
$ npm install -g jshint
```

## Setup iTerm
- Install patched powerline fonts: 
    ```bash
    $ git clone https://github.com/Lokaltog/powerline-fonts.git
    ```

- In iTerm Preferences, enable `Load preferences from a custom folder or URL` and point to settings plist

## Setup
```bash
$ curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
$ git clone git@github.com:disusered/vim.git .vim
$ ln -s .vim/vimrc .vimrc
$ ln -s .vim/gvimrc .gvimrc
```
