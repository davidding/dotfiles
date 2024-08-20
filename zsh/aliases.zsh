alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

function hist() { cat ~/.zsh_history | grep $1 }
