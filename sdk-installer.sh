#!/bin/bash
clear
echo "Welcome to the pi-top[4] SDK installer"
echo
echo "this script was created by CAProjects"
echo "to help with installing the pi-top SDK"
echo
echo "What this script does is check what "
echo "of Raspberry Pi OS your running and then"
echo "installs the required dependencies for the"
echo "pi-top SDK and also the SDK itself"
echo
echo "This script will start in 10 seconds"
sleep 10s

FILE=/boot/issue.txt
clear
echo "****************************************"
echo "* Updating your system before we start *"
echo "****************************************"
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

clear
echo "Update has completed"
echo "Checking if your using Raspbery Pi Lite, Minimal or full"
echo
if test -f "$FILE"; then
    if grep "stage1" "$FILE"; then
        echo "Well i dont know what to do here, sorry, you have an unsupported version"
    elif grep "stage2" "$FILE"; then
        clear
        echo "OS Version is Raspberry Pi Lite"
        echo "Installing SDK dependencies for Lite"
        sleep 3s
        sudo apt install -y python3-pip libopenjp2-7 libilmbase-dev libopenexr-dev libgstreamer1.0-dev libavcodec-dev libavformat-dev libswscale-dev
        sudo python3 -m pip install opencv-python
        echo
        echo "SDK dependencies installed, Installing the pi-top SDK"
        sleep 3s
    else
        clear
        echo "OS Version is Raspberry Pi Minimal or Full"
        echo "Installing SDK dependencies for Minimal/full"
        sleep 3s
        sudo python3 -m pip install opencv-python
        echo
        echo "SDK dependencies installed, Installing the pi-top SDK"
        sleep 3s
    fi
fi
clear
echo "deb http://apt.pi-top.com/pi-top-os sirius main contrib non-free" | sudo tee /etc/apt/sources.list.d/pi-top.list &> /dev/null
curl https://apt.pi-top.com/pt-apt.asc | sudo apt-key add
sudo apt update
sudo apt install --no-install-recommends -y pt-device-manager pt-sys-oled pt-firmware-updater

echo
echo "We are all done here, Please check the pi-top OLED screen for battery status"
echo "if you see a battery status on the OLED, the install completed without issue"
