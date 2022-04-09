#!/bin/bash
while true
do
/home/pi/Electron/electron --disable-seccomp-filter-sandbox --display=:0 /home/pi/display
sleep 5
done
