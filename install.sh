#!/usr/bin/env bash
# Author: jsondotload

# Get current dir and other useful dirs
export DOTFILES_DIR BACKUP_DIR APPCFG_DIR SYSCFG_DIR WORKSPACE_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BACKUP_DIR="$HOME/.original_dotfiles"
APPCFG_DIR="$DOTFILES_DIR/appcfg"
SYSCFG_DIR="$DOTFILES_DIR/system"
INSTALL_DIR="$DOTFILES_DIR/install"
WORKSPACE_DIR="/tmp/dotfiles-workspace"

# Create workspace
mkdir -p $WORKSPACE_DIR

# Include common functions
. "$SYSCFG_DIR/.function"

# Get current platform
export OS DISTR ARCH VER
get-platform OS DISTR ARCH VER

# Ask to authenticate sudo access so sudo doesn't have to be asked later
sudo echo "Got sudo access!"

# Install packages
install-package curl
install-package git
install-package tmux

# Update dotfiles itself
#if is-executable git -a -d "$DOTFILES_DIR/.git"; then git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master; fi

# Run install scripts
. $INSTALL_DIR/theme.sh
. $INSTALL_DIR/vim.sh


# Install dotfiles
install-dotfile "$APPCFG_DIR/.vimrc"

# Delete workspace
rm -rf $WORKSPACE_DIR
