export PATH="/opt/homebrew/bin:$PATH"
export PATH="$(go env GOPATH)/bin:$PATH"

autoload -Uz compinit
compinit

source ~/.aliases
