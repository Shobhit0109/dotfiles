function tree --wraps='/bin/tree -C ' --wraps='/bin/tree -C | bat -p' --description 'alias tree=/bin/tree -C | bat -p'
  # /bin/tree -C | bat -p $argv
  sh -c "/home/shobhit/.cargo/bin/tre $argv -c always -s | bat -p" 2> /dev/null 
end
