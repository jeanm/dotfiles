export TERM=screen-256color
export PS1="\[\033[1;32m\]\u \[\033[1;33m\]\h \[\033[1;31m\]\w \[\033[1;33m\]\$\[\033[0m\] "
export PROMPT_DIRTRIM=2
export HISTCONTROL=ignoreboth:erasedups

export EDITOR=nvim
alias vim=nvim
set -o vi

export PATH=~/.cargo/bin:$PATH
