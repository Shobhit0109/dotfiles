function printPoke --wraps='krabby random --no-title' --description 'alias printPoke=krabby random --no-title'
  # if [ "$USER" = "shobhit" ];
   sh -c "krabby random > /tmp/krabby && sed -i -e 's/^/           /' /tmp/krabby" 2> /dev/null 
  # end;
  head -n 1 /tmp/krabby | lolcat
  awk 'NR>1' /tmp/krabby
end
