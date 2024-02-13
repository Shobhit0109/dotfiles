function cp --wraps='/bin/cp --reflink' --description 'alias cp=/bin/cp --reflink'
  /bin/cp --reflink=auto $argv; 
end
