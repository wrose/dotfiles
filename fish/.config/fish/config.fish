if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

set SHELL /usr/local/bin/fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
Theme 'bobthefish'
Plugin 'theme'

if status --is-interactive
  set -l IFS # this temporarily clears IFS, which disables the newline-splitting
  eval (keychain --eval --quiet -Q id_rsa)
end

#source $HOME/.keychain/subayai-fish
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
