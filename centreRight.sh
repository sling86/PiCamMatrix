#!/bin/sh
##Assign location of this script to variable
##Used to restart script after connection is lost
position=centreRight
Script=/home/pi/TPiCamMatrix/$position.sh
pid_file=/var/run/camcentreRight.omx.pid
screen -dmS $position sh -c "omxplayer --win '1280 360 1920 720' --live $(cat /home/pi/TPiCamMatrix/tCams.txt | grep -o 'centreRight.*' | cut -f2- -d'=')"

##Find PID of omxplayer.bin
#The brackets "[ ]" around the n prevent grep from returning itself
#in the results of the ps command
PID=$(screen -ls | grep $position | cut -f1 -d'.' | sed 's/\W//g')
echo "PID = $PID"
echo "$PID" > $pid_file

##Loop to test if connection is present every 10 seconds
while [ $PID ];
    do
      sleep 1
      PID=$(screen -ls | grep $position | cut -f1 -d'.' | sed 's/\W//g')
      echo "$PID" > $pid_file
    done

#If connection is not found to be present execute this command to retry every 2 seconds
sleep 1
exec $Script
