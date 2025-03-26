MAKEFILE_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

brew:
	brew bundle --file=$(MAKEFILE_DIR)/Homebrew/Brewfile

set-defaults:
	sh $(MAKEFILE_DIR)/defaults/system.sh

stow:
	stow -t $(HOME) -S ghostty vim yazi
