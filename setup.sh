#!/bin/sh

chmod +x ./*.sh
chmod +x ./init.d/cam*

sudo apt-get update
sudo apt-get -y install screen omxplayer

sudo ln -s /home/pi/TPiCamMatrix/init.d/cammainCam /etc/init.d/cammainCam
sudo ln -s /home/pi/TPiCamMatrix/init.d/camtopRight /etc/init.d/camtopRight
sudo ln -s /home/pi/TPiCamMatrix/init.d/camcentreRight /etc/init.d/camcentreRight
sudo ln -s /home/pi/TPiCamMatrix/init.d/cambottomLeft /etc/init.d/cambottomLeft
sudo ln -s /home/pi/TPiCamMatrix/init.d/cambottomCentre /etc/init.d/cambottomCentre
sudo ln -s /home/pi/TPiCamMatrix/init.d/cambottomRight /etc/init.d/cambottomRight

sudo update-rc.d cammainCam defaults
sudo update-rc.d camtopRight defaults
sudo update-rc.d camcentreRight defaults
sudo update-rc.d cambottomLeft defaults
sudo update-rc.d cambottomCentre defaults
sudo update-rc.d cambottomRight defaults

read -p "Reboot now [y/n]? " choice
case "$choice" in
  y|Y ) echo "Rebooting... "; sudo reboot;;
  n|N ) echo "Ok but the cameras will not load until you do! ";;
  * ) echo "Invalid!";;
esac
