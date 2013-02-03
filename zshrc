# Completion

autoload -Uz compinit
compinit

# Prompt

autoload colors && colors
PROMPT="%{$fg_bold[green]%}%n %{$fg_bold[yellow]%}%m %{$fg_bold[red]%}%2c %{$fg_bold[yellow]%}\$%{$reset_color%} "

# Options

setopt autopushd autocd extendedglob hist_ignore_all_dups hist_ignore_space share_history
unsetopt correct_all

HISTSIZE=3000
SAVEHIST=3000
HISTFILE=~/.zsh_history

# Fix git completion

__git_files () {
	    _wanted files expl 'local files' _files
}
