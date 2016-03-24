1. Do a fresh install of rasbian jessie : https://www.raspberrypi.org/downloads/raspbian

2. Open the terminal and run the config: `sudo raspi-config`
  1. Expand Filesystem (`Option 1`)
  2. Change User Password (`Option 2`)
  3. (*Optional*) Boot Options (`Option 3`) Change to Console only (`B1`)
  4. Advanced Options (`Option 9`)
    1. Disable Overscan (`Option A1`)
    2. (*Optional*) Change hostname (`Option A2`)
    3. Memory Split (`Option A3`) Set the GPU to `512`
    4. Enable SSH (`Option A4`)

3. Reboot, Run ```sudo reboot``` in the terminal if you are not asked to already!

4. SSH into the pi from another pc and RUN:
    `sudo apt-get update; sudo apt-get -y install screen omxplayer`

5. Run: ```git clone https://github.com/sling86/TPiCamMatrix.git```

6. Edit tCams.txt with your camera urls:
`cd TPiCamMatrix/; nano tCams.txt`

7. Run:
`sudo ln -s /home/pi/TPiCamMatrix/init.d/cammainCam /etc/init.d/cammainCam; sudo ln -s /home/pi/TPiCamMatrix/init.d/camtopRight /etc/init.d/camtopRight; sudo ln -s /home/pi/TPiCamMatrix/init.d/camcentreRight /etc/init.d/camcentreRight; sudo ln -s /home/pi/TPiCamMatrix/init.d/cambottomLeft /etc/init.d/cambottomLeft; sudo ln -s /home/pi/TPiCamMatrix/init.d/cambottomCentre /etc/init.d/cambottomCentre; sudo ln -s /home/pi/TPiCamMatrix/init.d/cambottomRight /etc/init.d/cambottomRight`

8. Run:
`sudo update-rc.d cammainCam defaults; sudo update-rc.d camtopRight defaults; sudo update-rc.d camcentreRight defaults; sudo update-rc.d cambottomLeft defaults; sudo update-rc.d cambottomCentre defaults; sudo update-rc.d cambottomRight defaults`
