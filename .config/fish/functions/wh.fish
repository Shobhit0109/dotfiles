function wh --wraps='type -a' --description 'alias wh=type -a'
  type -a $argv | lolcat; 
end
