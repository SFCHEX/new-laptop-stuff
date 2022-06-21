brightnessctl -m -d nvidia_0 | awk -F, '{print substr($4, 0,length($4)-1)"%"}' & brightnessctl -m -d intel_backlight| awk -F, '{print substr($4, 0,length($4)-1)"%"}'
