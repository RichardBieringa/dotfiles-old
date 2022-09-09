#!/bin/bash

# Installs the homebrew packages as found in the 'BrewFile'
# Also installs homebrew if it is not present on the system

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


# Install brew if it is not installed
if ! command -v brew &> /dev/null
then
    echo "Installing homebrew..."
    export NONINTERACTIVE=1
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Check if all packages in 'BrewFile' are installed
# install them if they are not
if ! brew bundle check
then
    echo "Installing brew files"
    brew bundle install --file "${SCRIPT_DIR}/BrewFile"
fi

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