#! /bin/bash
clear
echo "connect scrcpy by wifi!"
echo "connect the cable temporarily"
sleep 3
echo "Changing the WiFi server port"
sleep 1
adb tcpip 9839 
echo "Connecting via WiFi"
sleep 1
echo "Enter Settings and About and copy the IP address"
read IP
adb connect $IP:9839
echo "connecting in scrcpy"
sleep 2
scrcpy & disown
exit
