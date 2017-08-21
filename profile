# emphaize host name
PS_COLOR="\[$(tput setaf 3)\]"
RESET="\[$(tput sgr0)\]"
export PS1="${PS_COLOR}\u@\h \w \$ ${RESET}"

[ -f /etc/bash_completion ] && . /etc/bash_completion

alias l='ls --color=auto --classify --group-directories-first --human-readable --quoting-style=literal'
alias l.='ls -d .* --color=auto' # show hidden only
alias ll='l -la' # show all

alias rand='dd if=/dev/urandom bs=128 count=1 2>/dev/null | base64 | cut -c -16'
ff () { /usr/bin/find . -name "$@" ; }      # ff:  Find file under the current directory
alias du1='du -h --max-depth=1'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HISTFILESIZE=100000
export HISTSIZE=10000
export HISTTIMEFORMAT="[%F %T] "
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

export MANPAGER="less -X" # Don't clear the screen after quitting a manual page

export PYTHONIOENCODING=utf-8
export PYTHONUNBUFFERED=1
export PYTHONWARNINGS="ignore:Deprecation"

export JAVA_OPTS="-Xms32m -Xmx256m"
export JVM_OPTS=$JAVA_OPTS

if [ ! -f ~/.z.sh ]; then
    wget -O ~/.z.sh  https://raw.githubusercontent.com/rupa/z/master/z.sh
fi
if [ ! -d ~/.bin ]; then
   mkdir ~/.bin
   MICRO_VER=1.3.1
   wget  -q -O- https://github.com/zyedidia/micro/releases/download/v${MICRO_VER}/micro-${MICRO_VER}-linux64.tar.gz | tar -xz -C /tmp
   mv /tmp/micro-${MICRO_VER}/micro ~/.bin/
   rm -Rf /tmp/micro-${MICRO_VER}
   export PATH="~/.bin:$PATH"
   alias nano='micro'
   alias u='micro'
fi

source ~/.z.sh

if [ -f /usr/bin/virtualenvwrapper_lazy.sh ]; then
    source /usr/bin/virtualenvwrapper_lazy.sh
fi

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
