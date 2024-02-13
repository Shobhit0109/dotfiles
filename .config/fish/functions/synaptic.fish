function synaptic --wraps='Sudo -b /sbin/synaptic' --description 'alias synaptic=Sudo -b /sbin/synaptic'
  Sudo -b /sbin/synaptic $argv; 
end
