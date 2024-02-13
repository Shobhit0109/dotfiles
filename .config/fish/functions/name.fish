function name --wraps='gdbus call --session --dest org.gnome.Shell --object-path /org/gnome/shell/extensions/FocusedWindow --method org.gnome.shell.extensions.FocusedWindow.Get' --description 'alias name=gdbus call --session --dest org.gnome.Shell --object-path /org/gnome/shell/extensions/FocusedWindow --method org.gnome.shell.extensions.FocusedWindow.Get'
  gdbus call --session --dest org.gnome.Shell --object-path /org/gnome/shell/extensions/FocusedWindow --method org.gnome.shell.extensions.FocusedWindow.Get $argv; 
end
