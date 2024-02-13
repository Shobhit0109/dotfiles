function twc --wraps='warp-cli status | grep Dis &>/dev/null && warp-cli connect &> /dev/null ;warp-cli status' --description 'alias twc=warp-cli status | grep Dis &>/dev/null && warp-cli connect &> /dev/null ;warp-cli status'
  warp-cli status | grep Dis &>/dev/null && warp-cli connect &> /dev/null ;warp-cli status $argv;

  # Sudo systemctl start warp-svc.service &> /dev/null
  # while test 1;warp-cli connect &> /dev/null && return;end
end
