#!/usr/local/bin/fish
set -gx PATH /usr/local/bin $PATH $HOME/.rvm/bin

/usr/local/bin/bash source $HOME/.yodle-dev-shell-utils/conf/sh/all

test -s /Users/wrose/.nvm-fish/nvm.fish; and source /Users/wrose/.nvm-fish/nvm.fish
