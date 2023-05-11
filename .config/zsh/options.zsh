
setopt auto_cd
setopt auto_pushd

HISTFILE="$XDG_STATE_HOME"/zsh/history 
HISTSIZE=2000
SAVEHIST=2000
WORDCHARS=${WORDCHARS/\/}
cdpath=(. /run/media/$USER/)