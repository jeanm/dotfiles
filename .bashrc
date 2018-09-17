export TERM=screen-256color
export PS1="\[\e[1;32m\]\u \[\e[1;37m\]$(date -u +'%m%d')\[\e[0;37m\]T\[\e[1;37m\]$(date -u +'%H%M')\[\e[0;37m\]Z \[\e[1;33m\]\h \[\e[1;31m\]\w \[\e[1;33m\]\$\[\e[0m\] "
export PROMPT_DIRTRIM=2
export HISTCONTROL=ignoreboth:erasedups

export EDITOR=nvim
alias vim=nvim
set -o vi

export PATH=~/.cargo/bin:$PATH
