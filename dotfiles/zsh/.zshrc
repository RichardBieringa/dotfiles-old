# Path to your oh-my-zsh installation.
export ZSH="/Users/richardbieringa/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Timestamp fmt in histry
HIST_STAMPS="dd.mm.yyyy"

plugins=(
  aws
  cargo
  colored-man-pages
  docker
  docker-compose
  dotenv
  fzf
  gcloud
  git
  kubectl
  ripgrep
  rust
)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='nvim'

# Symlinking GNU utils over BSD equivalents
# https://gist.github.com/skyzyx/3438280b18e4f7c490db8a2a2ca0b9da
BREW_BIN="/usr/local/bin/brew"
if [ -f "/opt/homebrew/bin/brew" ]; then
    BREW_BIN="/opt/homebrew/bin/brew"
fi

if type "${BREW_BIN}" &> /dev/null; then
    BREW_PREFIX="$("${BREW_BIN}" --prefix)"
    for bindir in "${BREW_PREFIX}/opt/"*"/libexec/gnubin"; do export PATH=$bindir:$PATH; done
    for bindir in "${BREW_PREFIX}/opt/"*"/bin"; do export PATH=$bindir:$PATH; done
    for mandir in "${BREW_PREFIX}/opt/"*"/libexec/gnuman"; do export MANPATH=$mandir:$MANPATH; done
    for mandir in "${BREW_PREFIX}/opt/"*"/share/man/man1"; do export MANPATH=$mandir:$MANPATH; done
fi

# Starship prompt
eval "$(starship init zsh)"

# PyEnv setup
eval "$(pyenv init -)"
export PATH="/Users/richardbieringa/.pyenv/shims:${PATH}"