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
    echo "Installing homebrew packages"
    brew bundle install --file "${SCRIPT_DIR}/BrewFile"
fi