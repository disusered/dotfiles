case $(uname) in
  'Darwin')
    export BROWSER='open'
    export JAVA_HOME=`/usr/libexec/java_home`
    # export GOPATH="${HOME}/Development/SDK/gopath"
    # export ANDROID_HOME=/usr/local/opt/android-sdk
    # export VAGRANT_DEFAULT_PROVIDER=virtualbox
    ;;
  'Linux')
    export ALSA_CARD=Audio
    export _JAVA_OPTIONS='-Dsun.java2d.opengl=true,-Dawt.useSystemAAFontSettings=on,-Dswing.aatext=true'
    ;;
esac

export BAT_THEME="OneHalfDark"
export MDV_THEME=884.0977

export MARKPATH=$HOME/.marks
export TMPDIR="/tmp/$USER"
export KEYTIMEOUT=1

export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

export LESSPIPE=`which src-hilite-lesspipe.sh`
export LESSOPEN="| ${LESSPIPE} %s"
export LESS='-X -F -g -i -M -R -S -w -z-4'

export FZF_DEFAULT_COMMAND='ag --hidden --files-with-matches --color-line-number 1\;35 --color-path 1\;37 --color-match 7\;34 --pager "less -R" --filename-pattern ""'
export FZF_DEFAULT_OPTS='--layout=reverse --color hl:2,hl+:2,fg:8,fg+:15,bg+:0,info:8,prompt:5,spinner:135,pointer:12,marker:2'

export GIT_LOG_STYLE_BASIC="%C(magenta bold)%h%C(reset) %C(auto)%d%C(reset) %s"
export GIT_LOG_STYLE_COMPLEX="%C(magenta bold)%h%C(reset) %C(blue bold)%aN%C(reset) %C(auto)%d%C(reset) %s %C(8)(%cr)%C(reset)"
export GIT_LOG_STYLE=$GIT_LOG_STYLE_COMPLEX

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_HOOK_DIR=$HOME/.dotfiles/virtualenvwrapper

export NVM_LAZY_LOAD=false

# Load custom functions
source $HOME/.config/zsh/zshfuns
