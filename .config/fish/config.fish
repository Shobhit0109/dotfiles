function fish_greeting
end
if status is-interactive
   if test (uname -a | awk '{print $2}') = shobhit-Ubuntu ;
        starship init fish | source
        function fish_greeting
          if [ "$USER" = "shobhit" ];
            if not test $IN_NIX_SHELL
             printGreetings
            end
          end
        end
    end 

    bind \e. nextd-or-forward-word
    bind \e, prevd-or-backward-word
end
    
if test (uname -a | awk '{print $2}') = shobhit-Ubuntu ;
    alias as="apt list 2>/dev/null | cut -d/ -f1 | sed '1d' | fzf --multi --preview 'nala show -a {1}' --layout=reverse  | xargs -ro sudo nala install"
    alias als='apt list --installed 2>/dev/null | cut -d/ -f1 | sed \'1d\' | fzf --multi --preview \'nala show {1}\' --layout=reverse --bind \'enter:execute(fish -c "dpkg -L {} | cat; read")\''
    source /home/shobhit/.config/fish/nala.fish

    if [ "$USER" = "shobhit" ];
        nvm use 21 1> /dev/null &
        any-nix-shell fish --info-right | source
    end
    
    # smarter cd
    zoxide init fish | source

    fzf_configure_bindings --git_status= --history= --git_log= --directory=\cf --variables= --processes=\e\cp
end;


# if test (uname -a | awk '{print $2}') = apx_managed_aur.shobhit-Ubuntu ;
    # alias p=paru
    # #Search repos with 'yay' and 'fzf'
    # alias ps="paru -Slq | fzf --multi --preview  'paru -Si {1}' --layout=reverse | xargs -ro paru -S "
        
    # Search locally installed packages with 'yay' and 'fzf'
    # alias pls="paru -Qq | fzf --preview 'yay -Qil {}' --layout=reverse --bind 'enter:execute(paru -Qil {} | cat)'"
# end

# # load and unload environment variables
# direnv hook fish | source
