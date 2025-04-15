# silence zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# source dot files
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.bash_prompt ] && source ~/.bash_prompt

# Bash completion - case-insensitive (like your Zsh matcher-list)
bind "set completion-ignore-case on"

# add neovim to path
export PATH="/Users/maxbinaei/Downloads/nvim-macos-arm64/bin/:$PATH"
export TERM=xterm-256color

# add python lib to path
# export PATH="/Users/maxbinaei/Library/Python/3.9/bin/:$PATH"
# export PATH="/opt/homebrew/opt/python@3.13/libexec/bin/:$PATH"
export PATH="/opt/homebrew/opt/python@3.12/libexec/bin/:$PATH"

# Trick sim stuff
export PATH="/Library/trick/bin/:$PATH"
# export TRICK_CFLAGS="-g -Wall -Wmissing-prototypes -Wextra -Wshadow"
# export TRICK_CXXFLAGS="-g -Wall -Wextra -Wshadow"
export PYTHON_VERSION=3
export TRICK_CXXFLAGS="-g -I/opt/homebrew/include -L/opt/homebrew/lib -Wno-unused-command-line-argument -g -Wall -Wextra -Wshadow -ferror-limit=0"
export TRICK_CFLAGS="-g -I/opt/homebrew/include -L/opt/homebrew/lib -Wno-unused-command-line-argument -g -Wall -Wmissing-prototypes -Wextra -Wshadow -ferror-limit=0"
export TRICK_LDFLAGS="-L/opt/homebrew/lib"
export TRICK_EXCLUDE="/opt/homebrew"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# openjdk
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

