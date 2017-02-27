alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../../'                     # Go back 3 directory levels

alias ls='ls --color=auto --classify --group-directories-first --human-readable --quoting-style=literal'
alias l='ls'
alias ll='ls -la'
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias l.='ls -d .* --color=auto'
alias h='history'
alias j='jobs -l'
alias rand='dd if=/dev/urandom count=1 2> /dev/null | uuencode -m � | sed -ne 2p | cut -c -16'
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
alias wget='wget --trust-server-names --no-check-certificate '
alias ip="ifconfig | grep inet | sed -r 's/(prefix|netmask).*//g'"
alias du1='du -h --max-depth=1'
alias chmodf="find . -type f -exec chmod 644 {} \;"
alias chmodd="find . -type d -exec chmod 755 {} \;"
alias pubkey='pbcopy < ~/.ssh/id_rsa.pub; echo "Copied."'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

export MANPAGER="less -X" # Don't clear the screen after quitting a manual page
export GOPATH=~/.gopath
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH:$GOPATH/bin"

export PYTHONIOENCODING=utf-8
export PYTHONUNBUFFERED=1
export PYTHONWARNINGS="ignore:Deprecation"
alias pdb="python3 -m pdb "
alias pdb2="python2 -m pdb "

export JAVA_OPTS="-Xms32m -Xmx512m"
export JVM_OPTS=$JAVA_OPTS

if [ ! -f ~/.z.sh ]; then
    wget -O ~/.z.sh  https://raw.githubusercontent.com/rupa/z/master/z.sh
fi
source ~/.z.sh

case "$OSTYPE" in
  darwin*)  source ~/.bash_macos ;;
  linux*)   source ~/.bash_linux ;;
  *)        echo "unknown: $OSTYPE" ;;
esac

