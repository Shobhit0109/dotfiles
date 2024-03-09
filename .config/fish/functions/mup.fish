function mup --wraps='rhino-pkg update ; g' --description 'alias mup=rhino-pkg update ; g'
  nix-env -u &> /dev/null &
  # sudo fish -c "nix-env -u" &> /dev/null &
  pkgx --update &> /dev/null &
  pkgx --sync &> /dev/null &
  pipx upgrade-all &> /dev/null & 
  # upload &> /dev/null &
  fish -c 'rustup update && cargo install-update --all' &> /dev/null & 
  flatpak update -y &> /dev/null &
  sudo sh -c exit
  nohup fish -c "pacstall -UP && pacstall -Up -P" &> /dev/null &
  sudo snap refresh &> /dev/null &
  # Sudo fish -c "nix-channel --update" &> /dev/null &
  # nix-channel --update &> /dev/null &
  Sudo fish -c "curl -sSL https://raw.githubusercontent.com/aandrew-me/tgpt/main/install | bash -s /usr/local/bin" &> /dev/null &
  npm update -g &> /dev/null &
  
  sudo nala upgrade
  grub &> /dev/null &
  # nvm
  while test 1;sleep 2;jobs && continue;break;end
end
