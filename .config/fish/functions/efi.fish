function efi --wraps=efibootmgr\ \|\ grep\ BootOrder\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ cb --description alias\ efi=efibootmgr\ \|\ grep\ BootOrder\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ cb
  efibootmgr | grep BootOrder | awk '{print $2}' | cb $argv; 
end
