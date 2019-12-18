vim
---------

|       | **Action**      |
|-------|-----------------|
| Space | Leader          |
| ^c    | All finders     |
| ^p    | Git files       |
| ^f    | All files       |
| ^b    | Buffers         |
| ^w    | Windows         |
| ^m    | Marks           |
| ^t    | Terminal        |
| ^r    | Registers       |
| ^s    | Symbols         |
| ^S    | Symbols sidebar |

|           | **Motion**     |
|-----------|----------------|
| s/t/f/T/F | EasyMotion     |
| ;         | Next match     |
| ,         | Previous match |

|     | **Column/CSV**    |
|-----|-------------------|
| ^mm | Toggle table mode |
| ^mt | CSV to table      |

|          | **Search**                       |
|----------|----------------------------------|
| :EnMasse | Replace on quickfix set          |
| :Grep    | Search for pattern interactively |
| Ctrl-j   | Previous                         |
| Ctrl-k   | Next                             |
| Tab      | Open and add to quickfix list    |
| \[q      | Go to previous result            |
| \]q      | Go to next result                |

|     | **Testing**            |
|-----|------------------------|
| ^tf | Test File in terminal  |
| ^ta | Test All in terminal   |
| ^th | Toggle terminal window |
| ^tc | Clear terminal window  |
| ^tk | Kill terminal process  |

|           | **User Commands**    |
|-----------|----------------------|
| :Browser  | Open Chrome Canary   |
| :Caniuse  | Caniuse under cursor |

|                   | **Spelling**            |
|-------------------|-------------------------|
| ]s                | Next spelling error     |
| [s                | Previous spelling error |
| z=                | Fix spelling error      |
| zg                | Add word to wordlist    |
| :set spelllang=es | Set language            |

|           | **Window Management**               |
|-----------|-------------------------------------|
| gT        | Go to next tab                      |
| gt        | Go to previous tab                  |
| ctrl+e    | Moves screen up one line            |
| ctrl+y    | Moves screen down one line          |
| ctrl+u    | Moves screen up ½ page              |
| ctrl+d    | Moves screen down ½ page            |
| ctrl+b    | Moves screen up one page            |
| ctrl+f    | Moves screen down one page          |
| ctrl+w s  | Horizontal split                    |
| ctrl+w v  | Vertical split                      |
| ctrl+w t  | New tab                             |
| ctrl+w q  | Close pane                          |
| ctrl+w x  | Transpose panes                     |
| ctrl+w x  | Previous pane                       |
| ctrl+hjkl | Move to vim/tmux split in direction |

|    | **Folds**      |
|----|----------------|
| za | Toggle fold    |
| zc | Reenable folds |

|            | **Slime**       |
|------------|-----------------|
| ^e         | Evaluate line   |
| motion ^ee | Evaluate motion |
| ^ea        | Evaluate region |

| -   | Emmet               |
|-----|---------------------|
| C-y | Emmet               |
| ,   | Expansion           |
| n   | Next edit point     |
| N   | Previous edit point |

|          | **Etc**                                |
|----------|----------------------------------------|
| ^rt      | Remove Trailing Whitespace             |
| [oc      | Enable cursorline                      |
| ]oc      | Disable cursorline                     |
| C-x C-f  | Insert path                            |
| C-\\ C-n | Exit Neovim Terminal                   |

|        | **Movement**                                   |
|--------|------------------------------------------------|
| g_     | Go to the last non-blank character of line     |
| %      | Go to the corresponding bracket                |
| *      | Highlight and jump between occurrences of word |
| ctrl+o | Previous Cursor Position                       |
| ctrl+i | Next Cursor Position                           |
