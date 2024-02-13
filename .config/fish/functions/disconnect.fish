function disconnect --wraps='warp-cli disconnect;Sudo systemctl stop warp-svc' --description 'alias disconnect=warp-cli disconnect;Sudo systemctl stop warp-svc'
  warp-cli disconnect;Sudo systemctl disable --now warp-svc $argv; 
end
