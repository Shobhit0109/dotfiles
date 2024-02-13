function mup --wraps='rhino-pkg update ; g' --description 'alias mup=rhino-pkg update ; g'
  nix-env -u &> /dev/null &
  pkgx --update &> /dev/null &
  pkgx --sync &> /dev/null &
  pipx upgrade-all &> /dev/null & 
  # upload &> /dev/null &
  fish -c 'rustup update && cargo install-update --all' &> /dev/null & 
  flatpak update -y &> /dev/null &
  sudo sh -c exit
  nohup fish -c "pacstall -UP && pacstall -Up -P" &> /dev/null &
  sudo snap refresh &> /dev/null &
  sudo fish -c "nix-channel --update" &> /dev/null &
  nix-channel --update &> /dev/null &
  sudo nala upgrade
  # sudo nala upgrade --no-update
  grub &> /dev/null &
  # $argv[2]
  # sleep 2
  # rhino-pkg update
  # $argv[3]
  # sleep 2
  # modular update mojo &
#  Sudo fish -c 'nix-channel --update'
#  pip ; nvm ; tgpt; tools i installed with nohang 
# go ; distrobox; qemu/kvm; asd
  while test 1;sleep 2;jobs && continue;break;end
  # $argv[1]
end
