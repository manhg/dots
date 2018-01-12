source .rc
export PS1="\[\033[38;5;10m\]\w ■\[\] $(tput sgr0)"

source .rc
source .z.sh
export HISTFILE=~/.bash_history
shopt -s histappend
export HISTCONTROL=ignorespace
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"