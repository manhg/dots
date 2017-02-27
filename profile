# emphaize host name
export PS1='\[\e[1;34m\]\u@\e[1;37m\]\h \e[1;34m\]\w \$\[\e[0m\] '

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