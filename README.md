# pi-top SDK Installer

This is a Shell script that will install the pi-top SDK and its dependecies automatically

## What does the script do exactly?

1. It will update your system
2. Check your version of Raspberry Pi OS by checking /boot/issue.txt
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

## Usage

wget -O - https://raw.githubusercontent.com/CAProjects/pi-topSDK-installer/main/sdk-installer.sh | bash
