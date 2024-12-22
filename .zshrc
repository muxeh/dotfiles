# source aliases
source ~/.aliases

# configure auto-complete to be caps agnostic
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# add neovim to path
export PATH="/Users/maxbinaei/Downloads/nvim-macos-arm64/bin/:$PATH"

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Configure prompt
source ~/.zsh-git-prompt/zshrc.sh
# Function to get the current Git branch
git_branch() {
  branch=$(git branch --show-current 2>/dev/null)
  if [[ -n $branch ]]; then
    echo " %F{151}$branch%f"  # branch
  fi
}

# Function to get the Git status (optional, adds ✘ for dirty repos)
git_status() {
  if git rev-parse --is-inside-work-tree &>/dev/null; then  # Check if in a Git repo
    if [[ -n $(git status --porcelain 2>/dev/null) ]]; then
      echo "%F{255} *%f"  # dirty
    else
      echo "%F{230} >%f"  # clean
    fi
  fi
}

# Customize the prompt with earthy tones
PROMPT='%F{230}%n@%m%f %F{144}%~%f$(git_branch)$(git_status)%F{223} %f '
