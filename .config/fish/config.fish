if status is-interactive
    # Commands to run in interactive sessions can go here
   # fzf_configure_bindings --variables= --git_status= --history= --processes=
   if test (uname -a | awk '{print $2}') = shobhit-Ubuntu ;
        starship init fish | source
        function fish_greeting
          if [ "$USER" = "shobhit" ];
            if not test $IN_NIX_SHELL
             please
             # pokemon-colorscripts -r --no-title
             printPoke
             echo
             printWeather
             # nvm use latest 1> /dev/null &
            end
          end
        end
    end 

    bind \e. nextd-or-forward-word
    bind \e, prevd-or-backward-word
end

# set -gx PATH /home/shobhit/.nix-profile/bin /nix/var/nix/profiles/default/bin /home/shobhit/.local/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games /snap/bin /var/lib/flatpak/exports/share /home/shobhit/.local/share/flatpak/exports/share /home/shobhit/.local/share/containers/podman-desktop/extensions-storage/podman-desktop.compose/bin /home/shobhit/.modular/pkg/packages.modular.com_mojo/bin /home/shobhit/.local/share/JetBrains/Toolbox/scripts /home/shobhit/.cargo/bin
    
if test (uname -a | awk '{print $2}') = shobhit-Ubuntu ;
    alias as="apt list 2>/dev/null | cut -d/ -f1 | sed '1d' | fzf --multi --preview 'nala show -a {1}' --layout=reverse  | xargs -ro sudo nala install"
    alias als="apt list --installed 2>/dev/null | cut -d/ -f1 | sed '1d' | fzf --multi --preview 'nala show {1}' --layout=reverse --bind 'enter:execute(dpkg -L {} | cat)'"
    source /home/shobhit/.config/fish/nala.fish

    if [ "$USER" = "shobhit" ];
        nvm use lts 1> /dev/null &
        any-nix-shell fish --info-right | source
        #pyenv
        # pyenv init - | source
        # status --is-interactive; and pyenv virtualenv-init - | source
    end
    # eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    # abbr sf 'echo 52 | sudo -kS fish -c ""'
    # abbr gc "git clone --depth=1 "
    # abbr up "fish -c 'upload 1> /tmp/git.txt' & ; echo 'cat /tmp/git.txt' | cb "
end;

# brew
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# if test (uname -a | awk '{print $2}') = kali.shobhit-Ubuntu ;
    # alias as="apt list 2>/dev/null | cut -d/ -f1 | fzf --multi --preview 'nala show {1}' --layout=reverse  | xargs -ro sudo nala install"
    # alias als="apt list --installed 2>/dev/null | cut -d/ -f1 | fzf --multi --preview 'nala show {1}' --layout=reverse --bind 'enter:execute(dpkg -L {} | cat)'"
    # source /home/shobhit/.config/fish/nala.fish
    # # eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# end;
# if test (uname -a | awk '{print $2}') = apx_managed_aur.shobhit-Ubuntu ;
    # alias p=paru
    # #Search repos with 'yay' and 'fzf'
    # alias ps="paru -Slq | fzf --multi --preview  'paru -Si {1}' --layout=reverse | xargs -ro paru -S "
        
    # Search locally installed packages with 'yay' and 'fzf'
    # alias pls="paru -Qq | fzf --preview 'yay -Qil {}' --layout=reverse --bind 'enter:execute(paru -Qil {} | cat)'"
# end
        
# [ -f /usr/share/autojump/autojump.fish ]; and source /usr/share/autojump/autojump.fish

# alias his="history 2>/dev/null | fzf --multi --layout=reverse | xargs -ro "
# if test -f /home/shobhit/.autojump/share/autojump/autojump.fish; . /home/shobhit/.autojump/share/autojump/autojump.fish; end
# navigation
# alias ..='cd ..'
# alias ...='cd ../..'
# alias .3='cd ../../..'
# alias .4='cd ../../../..'
# alias .5='cd ../../../../..'
    
    
# get error messages from journalctl
alias journalctl='SYSTEMD_PAGERSECURE=1 SYSTEMD_COLORS=0 SYSTEMD_LESS="FRSMK" SYSTEMD_PAGER="(which bat) --language syslog --plain" /bin/journalctl    --no-hostname '
alias jctl="journalctl -p 3 -xb"
    
    
# youtube-dl
# alias yta-aac="youtube-dl --extract-audio --audio-format aac "
# alias yta-best="youtube-dl --extract-audio --audio-format best "
# alias yta-flac="youtube-dl --extract-audio --audio-format flac "
# alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
# alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
# alias yta-opus="youtube-dl --extract-audio --audio-format opus "
# alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
# alias yta-wav="youtube-dl --extract-audio --audio-format wav "
# alias ytv-best="youtube-dl -f bestvideo+bestaudio "
# 
    
# switch between shells
# I do not recommend switching default SHELL from bash.
# alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
# alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
# alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"
    
    
# alias setea='test -d "$HOME/.tea" && "$HOME/.tea/tea.xyz/v*/bin/tea" --magic=fish --silent | source'
# setea


# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/home/shobhit/Downloads/Edge/google-cloud-sdk/path.fish.inc' ]; . '/home/shobhit/Downloads/Edge/google-cloud-sdk/path.fish.inc'; end

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# if test -f /home/shobhit/miniconda3/bin/conda
    # eval /home/shobhit/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# else
    # if test -f "/home/shobhit/miniconda3/etc/fish/conf.d/conda.fish"
        # . "/home/shobhit/miniconda3/etc/fish/conf.d/conda.fish"
    # else
        # set -x PATH "/home/shobhit/miniconda3/bin" $PATH
    # end
# end
# # <<< conda initialize <<<

# argc-completions
set -gx ARGC_COMPLETIONS_ROOT "/home/shobhit/argc-completions"
set -gx ARGC_COMPLETIONS_PATH "$ARGC_COMPLETIONS_ROOT/completions"
fish_add_path "$ARGC_COMPLETIONS_ROOT/bin"
# To add a subset of completions only, change next line e.g. set argc_scripts cargo git
set argc_scripts (ls -1 "$ARGC_COMPLETIONS_ROOT/completions" | sed -n 's/\.sh$//p')
argc --argc-completions fish $argc_scripts | source


# # vscode
# string match -q "$TERM_PROGRAM" vscode and . (code --locate-shell-integration-path fish)

# navi
navi widget fish | source

# load and unload environment variables
direnv hook fish | source
