export ZSH="$HOME/.oh-my-zsh"
plugins=(git python tmux virtualenv zsh-syntax-highlighting zsh-autosuggestions pip)
source $ZSH/oh-my-zsh.sh

# bun
[ -s "/home/andrew/.bun/_bun" ] && source "/home/andrew/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(starship init zsh)"
