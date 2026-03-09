#!/bin/sh

files=/tmp/Epindows
sys32=$files/config/System32

echo Installing configs...
git clone https://github.com/Otto303/Epindows.git $files -b dev &>/dev/null
i3 -c "$sys32/i3/config"

i3-msg floating enable

echo Installing packages...
$files/pkgs.sh > /dev/null

echo Openning desktop...
pcmanfm --desktop & disown
i3-msg floating disable; sleep 1
i3-msg focus right floating disable border none
i3-msg floating enable

echo Activating GUI...
(tint2 -c $files/win_test/taskbar_xp & disown) > /dev/null
(rofi -show drun -config $files/win_test/config.rasi & disown) > /dev/null

echo Epindows Successfully installed!
