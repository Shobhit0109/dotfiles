function rk --wraps='Sudo kexec -l /boot/vmlinuz --initrd=/boot/initrd.img --reuse-cmdline && systemctl kexec' --description 'alias rebootKexec=Sudo kexec -l /boot/vmlinuz --initrd=/boot/initrd.img --reuse-cmdline && systemctl kexec'
  # Sudo kexec -l /boot/vmlinuz --initrd=/boot/initrd.img --reuse-cmdline
  systemctl kexec $argv        
end
