function upload --wraps=git --description 'alias upload=git'
  set path /home/shobhit/Documents/{programing,NewJourney} /home/shobhit/.local/share/backgrounds/mine /home/shobhit/Downloads/study
  set terminal_width (tput cols)
  set separator (printf '%*s' "$terminal_width" | tr ' ' '-')
  for i in $path $argv;fish -c "cd $i;echo;echo $i;git add .;git commit -m (date); echo ;git push -u origin main"; echo "$separator";end     
end
