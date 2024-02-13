function kr --wraps='kexec -l /boot/vmlinuz --initrd=/boot/initrd.img --reuse-cmdline && systemctl kexec' --wraps=Sudo\ sh\ -c\ \'kexec\ -l\ /boot/vmlinuz\ --initrd=/boot/initrd.img\ --reuse-cmdline\ \&\&\ systemctl\ kexec\' --description alias\ kr=Sudo\ sh\ -c\ \'kexec\ -l\ /boot/vmlinuz\ --initrd=/boot/initrd.img\ --reuse-cmdline\ \&\&\ systemctl\ kexec\'
  Sudo sh -c 'kexec -l /boot/vmlinuz --initrd=/boot/initrd.img --reuse-cmdline && systemctl kexec' $argv; 
end
