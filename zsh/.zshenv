case $(uname) in
  'Darwin')
    export ZPLUG_HOME=/usr/local/opt/zplug
    ;;
  'Linux')
    export ZPLUG_HOME=$HOME/.zplug
    ;;
esac

export MDV_THEME=884.0977

export MARKPATH=$HOME/.marks
export TMPDIR="/tmp/$USER"
export KEYTIMEOUT=1

export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

export EDITOR='vim'
export PAGER='less'
export LESS='-X -F -g -i -M -R -S -w -z-4'

export FZF_DEFAULT_OPTS='--color hl:2,hl+:2,fg:8,fg+:15,bg+:0,info:8,prompt:5,spinner:135,pointer:12,marker:2'
export FZF_DEFAULT_COMMAND='ag -l -g ""'
export FZF_COMPLETION_OPTS=''

export GIT_LOG_STYLE_BASIC="%C(magenta bold)%h%C(reset) %C(auto)%d%C(reset) %s"
export GIT_LOG_STYLE_COMPLEX="%C(magenta bold)%h%C(reset) %C(blue bold)%aN%C(reset) %C(auto)%d%C(reset) %s %C(8)(%cr)%C(reset)"
export GIT_LOG_STYLE=$GIT_LOG_STYLE_COMPLEX

case $(uname) in
  'Darwin')
    export BROWSER='open'
    export JAVA_HOME=`/usr/libexec/java_home`
    export GOPATH="${HOME}/Development/SDK/gopath"
    export ANDROID_HOME=/usr/local/opt/android-sdk
    export VAGRANT_DEFAULT_PROVIDER=virtualbox
    ;;
  'Linux')
    export ALSA_CARD=Audio
    ;;
esac

# Load custom functions
source $HOME/.config/zsh/zshfuns