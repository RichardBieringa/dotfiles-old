SHELL := /bin/bash

# default config directory 
# see: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
XDG_CONFIG_HOME ?= $(HOME)/.config/

CURR_DIR = $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
STOW_ROOT = configs

.PHONY : install
install : ## Install (symlink) all dotfiles.
	stow --dir $(CURR_DIR) --target $(XDG_CONFIG_HOME) --verbose $(STOW_ROOT)

.PHONY : clean
clean : ## Removes all the symlinks.
	stow --dir $(CURR_DIR) --target $(XDG_CONFIG_HOME) --verbose --delete $(STOW_ROOT)

.PHONY : macos
macos : ## Installs Mac OS specifics.
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	./mac-os-defaults.sh
	./brew/install.sh

.PHONY : brew
brew : ## Installs brew packages.
	./brew/install.sh


.PHONY : help
help: ## Print this help message.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[$$()% a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
.DEFAULT_GOAL := help
