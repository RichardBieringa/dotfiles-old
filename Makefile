SHELL := /bin/bash

STOW_ROOT = $(realpath dotfiles)
STOW_PACKAGES = $(notdir $(wildcard $(STOW_ROOT)/*))

.PHONY : stow
stow :
	stow --dir $(STOW_ROOT) --target $(HOME) --verbose $(STOW_PACKAGES)


.PHONY : stow-verbose
# verbosity goes from 0 to 4
VERBOSITY=1
stow-verbose :
	stow --dir $(STOW_ROOT) --verbose $(VERBOSITY) --target $(HOME) --verbose $(STOW_PACKAGES)

.PHONY : dry-run
dry-run :
	stow --no --dir $(STOW_ROOT) --target $(HOME) --verbose $(STOW_PACKAGES)

.PHONY : restow
restow :
	stow --dir $(STOW_ROOT) --target $(HOME) --verbose --restow $(STOW_PACKAGES)

# Do this *before* moving to another directory.
.PHONY : delete
delete :
	stow --dir $(STOW_ROOT) --target $(HOME) --verbose --delete $(STOW_PACKAGES)

.PHONY : macos
macos :
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	./mac-os-defaults.sh
	./brew/install.sh

.PHONY : brew
brew :
	./brew/install.sh
