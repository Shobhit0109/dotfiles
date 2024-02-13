function fanoff --wraps=Sudo\ fish\ -c\ \'echo\ 2\ \>\ /sys/devices/platform/hp-wmi/hwmon/hwmon\*/pwm1_enable\' --description alias\ fanoff=Sudo\ fish\ -c\ \'echo\ 2\ \>\ /sys/devices/platform/hp-wmi/hwmon/hwmon\*/pwm1_enable\'
  Sudo fish -c 'echo 2 > /sys/devices/platform/hp-wmi/hwmon/hwmon*/pwm1_enable' $argv; 
end
