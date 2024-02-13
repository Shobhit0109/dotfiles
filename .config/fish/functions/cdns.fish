function cdns --wraps='Sudo fish -c "cat /etc/resolv.conf~ > /etc/resolv.conf"' --description 'alias cdns=Sudo fish -c "cat /etc/resolv.conf~ > /etc/resolv.conf"'
  Sudo fish -c "cat /etc/resolv.conf~ > /etc/resolv.conf" $argv; 
end
