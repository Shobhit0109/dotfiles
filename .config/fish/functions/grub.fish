function grub --wraps=Sudo\ fish\ -c\ \'update-grub\ \;\ rsync\ -cavu\ --delete\ /boot/\*\ /bootBack/\' --wraps=Sudo\ fish\ -c\ \'update-grub\ \;\ rsync\ -cazvu\ --delete\ /boot/\*\ /bootBack/\' --description alias\ g=Sudo\ fish\ -c\ \'update-grub\ \;\ rsync\ -cazvu\ --delete\ /boot/\*\ /bootBack/\'
  Sudo fish -c 'update-grub ; echo efi1; rm -r /bootBack/*; rsync -caizvu --delete /boot/* /bootBack/ | grep sent;'; 
end
