#!/bin/bash

sudo ls -p /boot/grub/themes/Transistor &> /dev/null || sudo mkdir -p /boot/grub/themes/Transistor
echo -n "[..] copying theme... "
sudo ln -s $(pwd)/Resources/*  /boot/grub/themes/Transistor 
echo -e "\e[0K\r[OK] copying theme...DONE! "
echo -n "[..] copying background image..."
sudo cp ./Resources/background.png /usr/share/images/desktop-base/desktop-grub.png
echo -e "\e[0K\r[OK] copying background image...DONE! "
echo -n "[..] running update-grub..."
sudo update-grub 
echo -e "\e[OK\r] running update-grub...DONE! "
echo DONE!
