#!/bin/sh

if hash brew 2>/dev/null; then
	brew bundle install
else
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
	brew bundle install
fi
