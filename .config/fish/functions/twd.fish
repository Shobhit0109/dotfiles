function twd --wraps='warp-cli status | grep Dis &>/dev/null && warp-cli status && return ; warp-cli disconnect &> /dev/null && warp-cli status' --description 'alias twd=warp-cli status | grep Dis &>/dev/null && warp-cli status && return ; warp-cli disconnect &> /dev/null && warp-cli status'
    warp-cli status | grep Dis &>/dev/null && warp-cli status && return ; warp-cli disconnect &> /dev/null && warp-cli status $argv;
  
    # warp-cli disconnect &> /dev/null
    # Sudo systemctl stop warp-svc.service &> /dev/null
end
