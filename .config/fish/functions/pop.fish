function pop --wraps='gnome-extensions reset pop-shell@system76.com && gnome-extensions enable pop-shell@system76.com' --description 'alias pop=gnome-extensions reset pop-shell@system76.com && gnome-extensions enable pop-shell@system76.com'
  gnome-extensions reset pop-shell@system76.com && gnome-extensions enable pop-shell@system76.com $argv; 
end
