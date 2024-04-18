# Display for ultra wide monitor (optional)
# Ref: https://medium.com/@AbhiXpert/add-change-the-custom-resolution-of-your-display-using-xrandr-on-ubuntu-18-04-in-a-minute-338caec6e29

# Extract the monitor name
xrandr

# It could be Virtual1 or eDP-1
sudo nala install xcvt
cvt 2560 1080 60 # OR cvt 2560 1080 50

sudo xrandr --newmode "2560x1080_60.00"  230.00  2560 2720 2992 3424  1080 1083 1093 1120 -hsync +vsync

# OR for 50Hz
# sudo xrandr --newmode "2560x1080_50.00"  188.75  2560 2712 2976 3392  1080 1083 1093 1114 -hsync +vsync
sudo xrandr --addmode HDMI-1 "2560x1080_60.00"

# Add the last two commands to the .~/.profile
# xrandr --newmode "2560x1080_50.00"  188.75  2560 2712 2976 3392  1080 1083 1093 1114 -hsync +vsync
# xrandr --addmode HDMI-1 "2560x1080_50.00"

xrandr --newmode "2560x1080_60.00"  230.00  2560 2720 2992 3424  1080 1083 1093 1120 -hsync +vsync
xrandr --addmode HDMI-1 "2560x1080_60.00"