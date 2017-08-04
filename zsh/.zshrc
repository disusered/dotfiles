# Set $path
source $HOME/.config/zsh/zshpath

# zplug init
case $(uname) in
  'Darwin')
    source $ZPLUG_HOME/init.zsh
    ;;
  'Linux')
    source /usr/share/zsh/scripts/zplug/init.zsh
    ;;
esac

# plugins
zplug 'junegunn/fzf', use:"shell/*.zsh"
zplug 'mollifier/cd-gitroot'
zplug 'zsh-users/zsh-history-substring-search'
zplug 'hchbaw/zce.zsh'

# zsh-syntax-highlighting must be loaded after executing compinit & sourcing plugins
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# completions
zplug "zsh-users/zsh-completions"
zplug "lukechilds/zsh-better-npm-completion"
case $(uname) in
  'Darwin')
    zplug "Homebrew/homebrew-services", use:"completions/zsh"
    ;;
esac

# theme
zplug "mafredri/zsh-async", on:"sindresorhus/pure"
zplug "sindresorhus/pure", use:"pure.zsh"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Autoload modules
autoload -U compinit && compinit

# History
SAVEHIST=10000
HISTSIZE=10000
HISTFILE=$HOME/.zsh_history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt HIST_BEEP

# Disable Globbing
alias git='noglob git'
case $(uname) in
  'Darwin')
    alias open='noglob open'
    ;;
esac

# Aliases
alias ta='tmux attach -t'
alias f='fzf-tmux'
alias c='clear'
alias r='ranger'
alias j="selectmark"
alias md='nohup showdown > /dev/null &!'
alias t='twitter'
alias cdg='cd-gitroot'
alias top='htop'
alias ztime='/usr/bin/time zsh -i -c exit'
alias used='ncdu'
alias ag='ag --pager "less -R" --color-line-number 1\;35 --color-path 1\;37 --color-match 7\;34'
alias http='http --style vim'
alias edit='nvim $(ls ~/.dotfiles/help/ | f --prompt "❓  " | xargs -I % echo ~/.dotfiles/help/%)'
alias magit="nvim -c MagitOnly"
alias g='git'
alias gl="gli"
alias gfl='git-flow'
alias gcp='g cherry-pick'
alias gs='g status --short --branch'
alias gb='g branch'
alias gbc='g checkout -b'
alias gc='g commit --verbose'
alias gca='g commit --verbose --amend'
alias gcm='g commit --message'
alias gg='g ack'
alias ga='g add'
alias gp='g push'
alias gpf='g push --force'
alias gd='g diff --no-ext-diff'
alias gdt='g difftool'
alias gm='g merge'
alias gmt='g mergetool'
alias gf='g fetch'
alias gfm='g pull'
alias gr='g reset'
alias gco='g checkout'
alias ll='ls -l'
alias la='ls -la'
alias colors='( x=`tput op` y=`printf %$((${COLUMNS}-6))s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done; )'

# Mac Aliases
case $(uname) in
  'Darwin')
    alias ls='ls -G'
    alias d='dict'
    alias p='preview'
    alias flushdns='sudo discoveryutil udnsflushcaches'
    alias pbc='pbcopy'
    alias pbp='pbpaste'
    alias fonts='fc-list | cut -f2 -d: | sort -u'
    alias help='md $(ls ~/.dotfiles/help/ | f --prompt "❓  " | xargs -I % echo ~/.dotfiles/help/%)'
    alias chat='weechat'
    alias preview='term-img'
    ;;
  'Linux')
    alias pbc='clipcopy'
    alias ls='ls --color'
    alias lock='i3lock-fancy'
    alias help='nohup showdown $(ls ~/.dotfiles/help/ | f --prompt "❓  " | xargs -I % echo ~/.dotfiles/help/%) > /dev/null &! exit'
    ;;
esac

# Temporary files
if [[ ! -d "$TMPDIR" ]]; then
  mkdir -p -m 700 "$TMPDIR"
fi
TMPPREFIX="${TMPDIR%/}/zsh"
if [[ ! -d "$TMPPREFIX" ]]; then
  mkdir -p "$TMPPREFIX"
fi

# Base16 Shell
BASE16_SHELL=$HOME/.dotfiles/vendor/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_ocean

# Manual page (man) coloring
man() {
  env LESS_TERMCAP_mb=$'\E[01;31m' \
  LESS_TERMCAP_md=$'\E[01;35;74m' \
  LESS_TERMCAP_me=$'\E[0m' \
  LESS_TERMCAP_se=$'\E[0m' \
  LESS_TERMCAP_so=$'\E[38;246m' \
  LESS_TERMCAP_ue=$'\E[0m' \
  LESS_TERMCAP_us=$'\E[04;38;146m' \
  man "$@"
}

# Enable vim mode
bindkey -v

# History substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey -M vicmd 's' zce
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# HOME/END bindings
if [ -z "$WINDOWID" ]
then
  if [ -z "$TMUX" ]
  then
    # iTerm2
    bindkey "^[[H" beginning-of-line
    bindkey "^[[F" end-of-line
    bindkey -M vicmd '^[[H' beginning-of-line
    bindkey -M vicmd '^[[F' end-of-line
  else
    # iTerm2 + tmux
    bindkey "^[[1~" beginning-of-line
    bindkey "^[[4~" end-of-line
    bindkey -M vicmd '^[[1~' beginning-of-line
    bindkey -M vicmd '^[[4~' end-of-line
  fi
else
  # urxvt
  bindkey '^[[7~' beginning-of-line
  bindkey '^[[8~' end-of-line
  bindkey -M vicmd '^[[7~' beginning-of-line
  bindkey -M vicmd '^[[8~' end-of-line
fi

# Delete key
bindkey '^[[3~' delete-char

# Vi bindings
# mine
bindkey -M vicmd 'H' beginning-of-line
bindkey -M vicmd 'L' end-of-line

# Delete
bindkey -M vicmd '^[[3~' delete-char

# Undo/Redo
bindkey -M vicmd 'u' undo
bindkey -M vicmd '^R' redo

# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# Clipboard
case $(uname) in
  'Linux')
    vi-append-x-selection () { RBUFFER=$(xsel -o --clipboard </dev/null)$RBUFFER; }
    zle -N vi-append-x-selection
    bindkey -a 'p' vi-append-x-selection
  ;;
esac

# Modal cursor
case $(uname) in
  'Linux')
    zle-keymap-select () {
      if [ $TERM = "rxvt-unicode-256color" ]; then
        if [ $KEYMAP = vicmd ]; then
          echo -ne "\033]12;#B48EAD\007"
        else
          echo -ne "\033]12;Grey\007"
        fi
      fi
    }

    zle-line-init () {
      zle -K viins
      if [ $TERM = "rxvt-256color" ]; then
        echo -ne "\033]12;Grey\007"
      fi
    }

    zle -N zle-keymap-select
    zle -N zle-line-init
  ;;
esac

# Help
case $(uname) in
  'Darwin')
    unalias run-help
    ;;
esac
autoload run-help
HELPDIR=/usr/local/share/zsh/help

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# asdf
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

# Initialize zplug
zplug load
