# source aliases
source ~/.aliases

# configure auto-complete to be caps agnostic
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# add neovim to path
export PATH="/Users/maxbinaei/Downloads/nvim-macos-arm64/bin/:$PATH"

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
