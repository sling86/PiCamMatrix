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

3. Run: ```git clone https://github.com/sling86/TPiCamMatrix.git```

6. Edit tCams.txt with your camera urls:
`cd TPiCamMatrix/; nano tCams.txt`

7. Run:`./setup.sh`

8. Confirm reboot and then the cameras should load up on next boot. You will need to SSH into the pi to make any changes.
