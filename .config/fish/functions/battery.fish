function battery --wraps='busctl call --system org.freedesktop.UPower /org/freedesktop/UPower/devices/battery_BAT0 org.freedesktop.UPower.Device Refresh' --description 'alias battery=busctl call --system org.freedesktop.UPower /org/freedesktop/UPower/devices/battery_BAT0 org.freedesktop.UPower.Device Refresh'
  busctl call --system org.freedesktop.UPower /org/freedesktop/UPower/devices/battery_BAT0 org.freedesktop.UPower.Device Refresh $argv; 
end
