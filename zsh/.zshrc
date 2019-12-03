# Enable profiling module
# zmodload zsh/zprof

# Set $path
source $HOME/.config/zsh/zshpath

# zplugin init
source $HOME/.dotfiles/vendor/zplugin/zplugin.zsh

# plugins
zplugin light zsh-users/zsh-history-substring-search
zplugin light zdharma/fast-syntax-highlighting

# completions
zplugin ice blockf
zplugin light zsh-users/zsh-completions

# theme
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure

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
alias top='htop'
alias used='ncdu'
alias ag='ag --hidden --pager "less -R" --color-line-number 1\;35 --color-path 1\;37 --color-match 7\;34'
alias http='http --style vim'
alias edit='nvim $(ls ~/.dotfiles/help/ | f --prompt "❓  " | xargs -I % echo ~/.dotfiles/help/%)'
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
alias dci='docker rmi $(docker images -f "dangling=true" -q --no-trunc)'
alias colors='( x=`tput op` y=`printf %$((${COLUMNS}-6))s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done; )'

# Mac Aliases
case $(uname) in
  'Darwin')
    alias ls='ls -G'
    alias flushdns='sudo killall -HUP mDNSResponder'
    alias pbc='pbcopy'
    alias pbp='pbpaste'
    alias fontnames='fc-list | cut -f2 -d: | sort -u'
    alias help='bat $(ls ~/.dotfiles/help/ | f --prompt "❓  " | xargs -I % echo ~/.dotfiles/help/%)'
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

# rbenv
eval "$(rbenv init -)"

# marker
[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"

# virtualenvwrapper
[[ -s "$HOME/.local/bin/virtualenvwrapper_lazy.sh" ]] && source "$HOME/.local/bin/virtualenvwrapper_lazy.sh"
[[ -s "/usr/local/bin/virtualenvwrapper_lazy.sh" ]] && source "/usr/local/bin/virtualenvwrapper_lazy.sh"

# kiex
test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"

# fnm
eval "$(fnm env --multi)"

export PATH=/tmp/carlos/fnm-shell-5222166/bin:$PATH
export FNM_MULTISHELL_PATH=/tmp/carlos/fnm-shell-5222166
export FNM_DIR=/Users/carlos/.fnm/
export FNM_NODE_DIST_MIRROR=https://nodejs.org/dist
export FNM_LOGLEVEL=info

autoload -U add-zsh-hook
_fnm_autoload_hook () {
  if [[ -f .node-version && -r .node-version ]]; then
    echo "fnm: Found .node-version"
    fnm use
  elif [[ -f .nvmrc && -r .nvmrc ]]; then
    echo "fnm: Found .nvmrc"
    fnm use
  fi
}

add-zsh-hook chpwd _fnm_autoload_hook \
  && _fnm_autoload_hook

# Autoload module completion
autoload -U compinit && compinit

# Enable profiling
# zprof
