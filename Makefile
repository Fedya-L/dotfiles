MAKEFILE_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

stow:
	stow -t $(HOME) -S ghostty vim yazi

nixb:
	darwin-rebuild switch --flake $(MAKEFILE_DIR)/nix/#mbpro13

