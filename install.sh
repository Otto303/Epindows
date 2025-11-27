#!/bin/sh

echo Installing packages...
./pkgs.sh > /dev/null

echo Openning desktop...
pcmanfm --desktop & disown
i3-msg focus right floating disable border none
echo Activating GUI...
tint2 -c ~/afs/win_test/taskbar_xp & disown
rofi -show drun -config ~/afs/win_test/config.rasi & disown

exit
