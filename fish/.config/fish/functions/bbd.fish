# Defined in - @ line 1
function bbd --wraps='brew bundle dump -f --file ~/dotfiles/install/Brewfile' --description 'alias bbd brew bundle dump -f --file ~/dotfiles/install/Brewfile'
  brew bundle dump -f --file ~/dotfiles/install/Brewfile $argv;
end
