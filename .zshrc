# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH=$HOME/.pack/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH

# oh-my-zsh configuration

ZSH_THEME="af-magic"
CASE_SENSITIVE="true"
zstyle ':omz:update' mode auto      # update automatically without asking
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  cabal
  docker
  git
  github
  macos
  rust
  stack
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Direnv
eval "$(direnv hook zsh)"

# Aliases
alias vi=nvim
alias nix-x86-shell="nix-shell --argstr system x86_64-darwin"

