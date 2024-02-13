function fanon --wraps=Sudo\ fish\ -c\ \'echo\ 0\ \>\ /sys/devices/platform/hp-wmi/hwmon/hwmon\*/pwm1_enable\' --description alias\ fanon=Sudo\ fish\ -c\ \'echo\ 0\ \>\ /sys/devices/platform/hp-wmi/hwmon/hwmon\*/pwm1_enable\'
  Sudo fish -c 'echo 0 > /sys/devices/platform/hp-wmi/hwmon/hwmon*/pwm1_enable' $argv; 
end
