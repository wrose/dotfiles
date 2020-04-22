# Defined in - @ line 1
function bi --wraps='brew iinstall' --wraps='brew install' --description 'alias bi brew install'
  brew install $argv;
end
