function ls --wraps='exa -glarF@ --icons --group-directories-first --color=always' --description 'alias ls=exa -glarF@ --icons --group-directories-first --color=always'
  exa -glarF --icons --group-directories-first --color=always $argv; 
end
