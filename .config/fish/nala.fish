function u --wraps='sudo nala upgrade ; p -Up' --description 'alias u=sudo nala upgrade ; p -Up'
  sudo nala upgrade $argv[1] # ;p -Up $argv[2] ; 
end
# function sa --wraps=grep\ ^Package\ /mnt/Ubuntu/@Ubuntu/@/var/lib/apt/lists/\*\ \|\ awk\ \'\{print\ \}\'\ \|\ sort\ -u\ \|\ grep\ -w --wraps=grep\ ^Package\ /var/lib/apt/lists/\*\ \|\ awk\ \'\{print\ \}\'\ \|\ sort\ -u\ \|\ grep\ -w --wraps=grep\ ^Package\ /var/lib/apt/lists/\*\ \|\ awk\ \'\{print\ \}\'\ \|\ sort\ -u\  --wraps=grep\ ^Package\ /var/lib/apt/lists/\*\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ sort\ -u\  --wraps=grep\ ^Package\ /var/lib/apt/lists/\*\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ sort\ -u\ \|\ grep\ -w --wraps=Sudo\ grep\ ^Package\ /var/lib/apt/lists/\*\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ sort\ -u\ \|\ grep\ -w --wraps=grep\ ^Package\ /var/lib/apt/lists/!\(\"auxfiles\"\ \|\ \"partial\"\ \|\ \"lock\"\)\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ sort\ -u\ \|\ grep\ -w --wraps=grep\ ^Package\ \ \(find\ /var/lib/apt/lists\ -maxdepth\ 1\ -type\ f\ -not\ -name\ lock\)\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ sort\ -u\ \|\ grep\ -w\ hey --wraps=grep\ ^Package\ \ \(find\ /var/lib/apt/lists\ -maxdepth\ 1\ -type\ f\ -not\ -name\ lock\)\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ sort\ -u\ \|\ grep\ -w --description alias\ sa=grep\ ^Package\ \ \(find\ /var/lib/apt/lists\ -maxdepth\ 1\ -type\ f\ -not\ -name\ lock\)\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ sort\ -u\ \|\ grep\ -w
  # # grep ^Package  (find /var/lib/apt/lists -maxdepth 1 -type f -not -name lock) | awk '{print $2}' | sort -u | grep -w $argv;
  # apt list 2>/dev/null | grep $argv | grep -e $argv -e installed;
# end
function s --wraps='nala search' --description 'alias s=nala search'
  nala search $argv; 
end
function r --wraps='sudo nala remove' --description 'alias r=sudo nala remove'
  sudo nala remove $argv; 
end
function fu --wraps='sudo apt-fast' --description 'alias r=sudo apt update && sudo apt-fast upgrade'
  sudo sh -c "apt update && apt-fast upgrade $argv --autoremove $argv"; 
end
function ri --wraps='sudo apt-fast reinstall' --description 'alias ri=sudo apt-fast reinstall'
  sudo apt-fast reinstall $argv; 
end
function p --wraps=pacstall --wraps='pacstall -K' --description 'alias p=pacstall -K'
  pacstall -K $argv; 
end
function l --wraps='dpkg -L' --description 'alias l=dpkg -L'
  dpkg -S $argv; 
end
function info --wraps='nala show' --description 'alias info=nala show'
  nala show $argv; 
end
function i --wraps='sudo nala install' --description 'alias i=sudo nala install'
  sudo nala install $argv; 
end
function h --wraps='sudo nala history' --description 'alias h=sudo nala history'
  sudo nala history $argv; 
end

