vim
---------

|       | **Action** |
|-------|------------|
| Space | Leader     |
| ^p    | Git files  |
| ^f    | All files  |
| ^b    | Buffers    |

|           | **Motion**     |
|-----------|----------------|
| s/t/f/T/F | EasyMotion     |
| ;         | Next match     |
| ,         | Previous match |

|                   | **Writing**             |
|-------------------|-------------------------|
| ^mm               | Toggle table mode       |
| ^mt               | CSV to table            |
| ]s                | Next spelling error     |
| [s                | Previous spelling error |
| zg                | Add to dictionary       |
| z=                | Suggestions             |
| :set spelllang=es | Set language            |

|       | **Registers**                          |
|-------|----------------------------------------|
| C-R   | Show registers in insert mode          |
| "     | Show registers in normal mode (ex "1p) |
| @     | Executes registers in ex mode          |
| Space | Fullscreen                             |

|             | **Search**                       |
|-------------|----------------------------------|
| :EnMasse    | Replace on quickfix set          |
| :Ag pattern | Search for pattern interactively |
| rAlt-A      | Select All                       |
| rAlt-D      | Deselect All                     |
| Tab         | Open and add to quickfix list    |
| \[q         | Go to previous result            |
| \]q         | Go to next result                |
| ^k          | Highlight word                   |
| ^K          | Clear highlights                 |

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
| :Nstart   | npm start            |
| :Ninstall | npm install          |
| :Nrun     | npm run arg          |

|    | **Spelling**            |
|----|-------------------------|
| ]s | Next spelling error     |
| [s | Previous spelling error |
| z= | Fix spelling error      |
| zg | Add word to wordlist    |

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
| gof      | Open current file location in Finder   |
| got      | Open current file location in Terminal |
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
