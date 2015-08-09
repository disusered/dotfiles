vim
---------

|          | Action             |
|----------|--------------------|
| <Space\> | Leader             |
| F5       | Update CtrlP cache |
| 💡 p      | Files              |
| 💡 b      | Buffers            |

|           | Motion         |
|-----------|----------------|
| s/t/f/T/F | EasyMotion     |
| ;         | Next match     |
| ,         | Previous match |

|      | Writing           |
|------|-------------------|
| 💡 mm | Toggle table mode |
| 💡 mt | CSV to table      |

|          | Search                  |
|----------|-------------------------|
| :Ag i    | Search                  |
| :EnMasse | Replace on quickfix set |
| 💡 k      | Highlight word          |
| 💡 K      | Clear highlights        |

|      | Testing                  |
|------|--------------------------|
| 💡 tn | Test Nearest             |
| 💡 T  | Test File                |
| 💡 a  | Test Suite               |
| 💡 l  | Test Last                |
| 💡 g  | Vist last used test file |

|           | User Commands        |
|-----------|----------------------|
| :Browser  | Open Chrome Canary   |
| :Caniuse  | Caniuse under cursor |
| :Nstart   | npm start            |
| :Ninstall | npm install          |
| :Nrun     | npm run <arg\>        |

|    | Spelling                |
|----|-------------------------|
| ]s | Next spelling error     |
| [s | Previous spelling error |
| z= | Fix spelling error      |
| zg | Add word to wordlist    |

|        | Window Management                   |
|--------|-------------------------------------|
| gT     | Go to next tab                      |
| gt     | Go to previous tab                  |
| ^+e    | Moves screen up one line            |
| ^+y    | Moves screen down one line          |
| ^+u    | Moves screen up ½ page              |
| ^+d    | Moves screen down ½ page            |
| ^+b    | Moves screen up one page            |
| ^+f    | Moves screen down one page          |
| ^+w s  | Horizontal split                    |
| ^+w v  | Vertical split                      |
| ^+w t  | New tab                             |
| ^+w q  | Close split                         |
| ^+hjkl | Move to vim/tmux split in direction |

|  | Folds          |
|---------|----------------|
| za      | Toggle fold    |
| zc      | Reenable folds |

|                                         | Rename                          |
|-----------------------------------------|---------------------------------|
| crs                                     | Coerce to snake_case            |
| crm                                     | Coerce to MixedCase             |
| crc                                     | Coerce to camelCase             |
| cru                                     | Coerce to UPPER_CASE            |
| :%Subvert/facilit{y,ies}/building{,s}/g | Rename preserving plural & caps |

|              | REPL                             |
|--------------|----------------------------------|
| ^c+^c        | Send to pane to evaluate (slime) |
| <C-x\><C-o\> | Trigger omnifunc completion      |

|               | Etc                                    |
|---------------|----------------------------------------|
| <C-y\>💡       | Emmet expansion                        |
| 💡 rt          | Remove Trailing Whitespace             |
| gof           | Open current file location in Finder   |
| got           | Open current file location in Terminal |
| [oc           | Enable cursorline                      |
| ]oc           | Disable cursorline                     |
| <C-x\><C-f\>  | Insert path                            |
| <C-\\\><C-n\> | Exit Neovim Terminal                   |

|     | Movement                                       |
|-----|------------------------------------------------|
| g_  | Go to the last non-blank character of line     |
| %   | Go to the corresponding bracket                |
| *   | Highlight and jump between occurrences of word |
| ⌃+o | Previous Cursor Position                       |
| ⌃+i | Next Cursor Position                           |
