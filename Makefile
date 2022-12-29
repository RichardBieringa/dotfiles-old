SHELL := /bin/bash

# default config directory 
# see: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
XDG_CONFIG_HOME ?= $(HOME)/.config/

STOW_ROOT = $(realpath configs)
STOW_PACKAGES = $(notdir $(wildcard $(STOW_ROOT)/*))

# symlinks all configuration files to XDG_HOME directory
.PHONY : stow
stow :
	stow --dir $(STOW_ROOT) --target $(XDG_CONFIG_HOME) --verbose $(STOW_PACKAGES)

.PHONY : stow-verbose
# verbosity goes from 0 to 4
VERBOSITY=1
stow-verbose :
	stow --dir $(STOW_ROOT) --verbose $(VERBOSITY) --target $(XDG_CONFIG_HOME) --verbose $(STOW_PACKAGES)

.PHONY : dry-run
dry-run :
	stow --no --dir $(STOW_ROOT) --target $(XDG_CONFIG_HOME) --verbose $(STOW_PACKAGES)

.PHONY : restow
restow :
	stow --dir $(STOW_ROOT) --target $(XDG_CONFIG_HOME) --verbose --restow $(STOW_PACKAGES)

# Do this *before* moving to another directory.
.PHONY : delete
delete :
	stow --dir $(STOW_ROOT) --target $(XDG_CONFIG_HOME) --verbose --delete $(STOW_PACKAGES)

.PHONY : macos
macos :
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	./mac-os-defaults.sh
	./brew/install.sh

.PHONY : brew
brew :
	./brew/install.sh
