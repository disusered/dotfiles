# Dotfiles

## Setup

- Install XCode and open once to accept license

- Add public key to [Github](https://github.com/settings/ssh) and [BitBucket](https://bitbucket.org/account/user/disusered/ssh-keys/)

- Install everything:
    ```bash
    $HOME/.dotfiles/link
    ```

- Configure iTerm
  ![iTerm2 Configuration](https://raw.githubusercontent.com/disusered/dotfiles/docs/images/iterm.png "iTerm2 Configuration")

- Configure XQuartz
  ![XQuartz Configuration](https://raw.githubusercontent.com/disusered/dotfiles/docs/images/xquartz-input.png "iTerm2 Configuration")
  ![XQuartz Configuration](https://raw.githubusercontent.com/disusered/dotfiles/docs/images/xquartz-pasteboard.png "iTerm2 Configuration")

- Configure Seil
  - System Preferences → Keyboard → Modifier Keys → Caps Lock → No Action
  - Change the caps lock key behaviour in Seil to keycode **53**

- Configure Karabiner
  - Change Key
    - Shift+Delete to Pipe(|)
    - Makes Fn key behave as {⇧⌃⌥⌘} + {letter, number, symbol}
  - Key Repeat
    - Delay Until Repeat: 150ms
    - Key Repeat: 20ms
  - Status Message
    - Disable all
  - AXNotifier
    - Disable AXNotifier
