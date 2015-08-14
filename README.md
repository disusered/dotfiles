# Dotfiles

## Setup

1. Install XCode and open once to accept license

- Add public key to [Github](https://github.com/settings/ssh) and [BitBucket](https://bitbucket.org/account/user/disusered/ssh-keys/)

- Install everything:
    ```bash
    # Run install script
    $HOME/.dotfiles/link

    # Install additional FZF extensions.
    # Choose n, y
    $(brew info fzf | grep /install | sed -E "s/([0-9]{1,3}\.){2}[0-9]{1,3}/HEAD/")
    ```

- Configure iTerm
  ![iTerm2 Configuration](https://raw.githubusercontent.com/disusered/dotfiles/docs/images/iterm.png "iTerm2 Configuration")

- Configure XQuartz
  ![XQuartz Configuration](https://raw.githubusercontent.com/disusered/dotfiles/docs/images/xquartz-input.png "iTerm2 Configuration")
  ![XQuartz Configuration](https://raw.githubusercontent.com/disusered/dotfiles/docs/images/xquartz-pasteboard.png "iTerm2 Configuration")

## Additional tweaks

#### Set key repeat settings in Karabiner
- Delay Until Repeat: 150ms
- Key Repeat: 20ms

- TODO: Karabiner & Seil configs
