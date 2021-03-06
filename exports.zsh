#!/usr/bin/env bash
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"

# Set default installation location used when issuing "brew cask install"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Make Sublime the default editor.
export EDITOR="subl";

# Prefer US English and use UTF-8.
export LANG="en_US.UTF-8";
export LC_ALL="en_US.UTF-8";

# Prefix "alias-tips" messages
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Alias tip: "

PHP_AUTOCONF="/usr/local/bin/autoconf"

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
