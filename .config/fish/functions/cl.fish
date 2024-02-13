function cl --wraps='builtin cd' --description 'alias cl=builtin cd'
  builtin cd $argv && ls; 
end
