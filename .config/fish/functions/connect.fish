function connect --wraps='warp-cli disconnect;Sudo systemctl stop warp-svc' --description 'alias connect=Sudo systemctl start warp-svc ; sleep 1; warp-cli connect'
  Sudo systemctl enable --now warp-svc ; sleep 1; warp-cli connect $argv; 
end
