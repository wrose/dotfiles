# Defined in - @ line 1
function bif --wraps='brew info' --description 'alias bif brew info'
  brew info $argv;
end
