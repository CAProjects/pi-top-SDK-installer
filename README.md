# pi-top SDK Installer

This is a Shell script that will install the pi-top SDK and its dependecies automatically

## What does the script do exactly?

1. It will update your system
2. Check your version of Raspberry Pi OS stage by checking /boot/issue.txt
   * Stage 2 - Lite
   * Stage 4 - Mininmal
   * Stage 5 - Full
3. If its Lite version then it will install the following
   * python3-pip
   * libopenjp2-7 
   * libilmbase-dev 
   * libopenexr-dev 
   * libgstreamer1.0-dev 
   * libavcodec-dev 
   * libavformat-dev 
   * libswscale-dev 
   * openCV
4. If its Minimal or Full it will install only openCV
5. It will then add the pi-top repo and apt key
6. then it will install the pi-top SDK

You will know if it suceeded in installing everything correctly when you see the pi-top animation start on the OLED followed by the menu system (default Battery status)

## Usage

wget -O - https://raw.githubusercontent.com/CAProjects/pi-top-SDK-installer/main/sdk-installer.sh | bash
