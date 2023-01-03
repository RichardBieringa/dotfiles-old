# User Environment Variables
# we should define $ZDOTDIR in  $HOME/.zshenv

# https://wiki.archlinux.org/title/XDG_Base_Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XGD_STATE_HOME="$HOME/.local/state"

# zsh configuration directory
# https://zsh.sourceforge.io/Intro/intro_3.html
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# history settings
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# default applications 
export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"

# node
export NVM_DIR="$HOME/.config/nvm"

# python
export PYENV_ROOT="$HOME/.pyenv"

# path
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"  # local binaries
export PATH="$HOME/.cargo/env:$PATH"            # cargo
export PATH="$PYENV_ROOT/bin:$PATH"             # python
