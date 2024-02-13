function assis --wraps='Sudo -b  fish -c " QT_QPA_PLATFORM=wayland btrfs-assistant "' --wraps=' QT_QPA_PLATFORM=wayland Sudo btrfs-assistant ' --wraps=' QT_QPA_PLATFORM=wayland Sudo -b btrfs-assistant ' --wraps='fish -c "QT_QPA_PLATFORM=wayland Sudo btrfs-assistant" ' --wraps='fish -c "QT_QPA_PLATFORM=wayland Sudo btrfs-assistant" & disown' --description 'alias assis=fish -c "QT_QPA_PLATFORM=wayland Sudo btrfs-assistant" & disown'
  fish -c "QT_QPA_PLATFORM=wayland Sudo btrfs-assistant" & disown $argv; 
end
