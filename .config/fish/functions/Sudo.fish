function Sudo --wraps=echo\ \'52\'\ \|\ sudo\ -kS --description alias\ Sudo=echo\ \'52\'\ \|\ sudo\ -kS
  echo '52' | /bin/sudo -kS $argv; 
end
