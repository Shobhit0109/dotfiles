function tw --wraps='warp-cli status | grep Dis && warp-cli connect && exit ; warp-cli disconnect' --wraps='warp-cli status | grep Dis && warp-cli connect && return ; warp-cli disconnect' --wraps='warp-cli status | grep Dis && warp-cli connect && return ; warp-cli disconnect && warp-cli status' --wraps='warp-cli status | grep Dis &>/dev/null && warp-cli connect && warp-cli status&& return ; warp-cli disconnect && warp-cli status' --wraps='warp-cli status | grep Dis &>/dev/null && warp-cli connect &> /dev/null && warp-cli status && return ; warp-cli disconnect &> /dev/null && warp-cli status' --description 'alias tw=warp-cli status | grep Dis &>/dev/null && warp-cli connect &> /dev/null && warp-cli status && return ; warp-cli disconnect &> /dev/null && warp-cli status'
  warp-cli status | grep Dis &>/dev/null && warp-cli connect &> /dev/null && warp-cli status && return ; warp-cli disconnect &> /dev/null && warp-cli status $argv;
  
  # warp-cli status &> /dev/null
  # if test $status -eq 0;
    # twd
    # echo Disconnected
  # else
    # twc
    # echo Connected
  # end
end
