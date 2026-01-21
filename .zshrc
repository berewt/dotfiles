# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH=$HOME/.pack/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH

# XDG Base Directories

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

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
  kitty
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

alias perso="cd ~/Perso"
alias pro="cd ~/Pro"
alias home="cd ~"

alias nix-edit="${EDITOR:-nvim} ~/.config/nix/flake.nix"
alias zsh-edit="${EDITOR:-nvim} ~/.zshrc"

alias nix-profile-upgrade="nix profile upgrade --all"
