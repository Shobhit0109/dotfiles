function swap --wraps='Sudo sh -c "swapoff -a && swapon -p 100 /dev/zram0 && swapon -a && swapon -s"' --description 'alias swap=Sudo sh -c "swapoff -a && swapon -p 100 /dev/zram0 && swapon -a && swapon -s"'
  Sudo sh -c "swapoff -a && swapon -p 100 /dev/zram0 && swapon -a && swapon -s" $argv; 
end
