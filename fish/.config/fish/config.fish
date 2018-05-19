if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

# Path to your oh-my-fish.
#set fish_path $HOME/.oh-my-fish

set SHELL /usr/local/bin/fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
#. $fish_path/oh-my-fish.fish

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
#Theme 'bobthefish'
#Plugin 'theme'

if begin; test -z (command pgrep ssh-agent); and not test -S $SSH_AUTH_SOCK; end
	eval (command ssh-agent -c | sed -E 's/^setenv (.+);$/set \1; set -Ux \1;/')
end

thefuck --alias | source 
set -x THEFUCK_OVERRIDDEN_ALIASES 'git'
set -g fish_user_paths "/usr/local/opt/ruby@2.3/bin" $fish_user_paths
