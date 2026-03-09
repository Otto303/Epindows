#!/bin/sh

i3-msg floating enable

echo Installing packages...
./pkgs.sh > /dev/null

echo Openning desktop...
pcmanfm --desktop & disown
i3-msg floating disable; sleep 1
i3-msg focus right floating disable border none
i3-msg floating enable

echo Activating GUI...
(tint2 -c ~/afs/win_test/taskbar_xp & disown) > /dev/null
(rofi -show drun -config ~/afs/win_test/config.rasi & disown) > /dev/null

echo Epindows Successfully installed!
