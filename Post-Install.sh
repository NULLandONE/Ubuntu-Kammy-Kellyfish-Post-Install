#!/bin/bash
export SLEEPVAL=0.07
echo -n 'H' ; sleep $SLEEPVAL
echo -n 'e' ; sleep $SLEEPVAL
echo -n 'y' ; sleep $SLEEPVAL
echo -n '.' ; sleep 1
echo ' '

echo -n 'T' ; sleep $SLEEPVAL
echo -n 'h' ; sleep $SLEEPVAL
echo -n 'i' ; sleep $SLEEPVAL
echo -n 's' ; sleep $SLEEPVAL
echo -n ' ' ; sleep $SLEEPVAL
echo -n 'i' ; sleep $SLEEPVAL
echo -n 's' ; sleep $SLEEPVAL
echo -n ' ' ; sleep $SLEEPVAL
echo -n 'j' ; sleep $SLEEPVAL
echo -n 'u' ; sleep $SLEEPVAL
echo -n 's' ; sleep $SLEEPVAL
echo -n 't' ; sleep $SLEEPVAL
echo -n ' ' ; sleep $SLEEPVAL
echo -n 'a' ; sleep $SLEEPVAL
echo -n ' ' ; sleep $SLEEPVAL
echo -n 'P' ; sleep $SLEEPVAL
echo -n 'o' ; sleep $SLEEPVAL
echo -n 's' ; sleep $SLEEPVAL
echo -n 't' ; sleep $SLEEPVAL
echo -n '-' ; sleep $SLEEPVAL
echo -n 'I' ; sleep $SLEEPVAL
echo -n 'n' ; sleep $SLEEPVAL
echo -n 's' ; sleep $SLEEPVAL
echo -n 't' ; sleep $SLEEPVAL
echo -n 'a' ; sleep $SLEEPVAL
echo -n 'l' ; sleep $SLEEPVAL
echo -n 'l' ; sleep $SLEEPVAL
echo -n '.' ; sleep 1
echo ' '

echo -n 'S' ; sleep $SLEEPVAL
echo -n 'o' ; sleep $SLEEPVAL
echo -n ' ' ; sleep $SLEEPVAL
echo -n 'l' ; sleep $SLEEPVAL
echo -n 'e' ; sleep $SLEEPVAL
echo -n 't' ; sleep $SLEEPVAL
echo -n "'" ; sleep $SLEEPVAL
echo -n 's' ; sleep $SLEEPVAL
echo -n ' ' ; sleep $SLEEPVAL
echo -n 's' ; sleep $SLEEPVAL
echo -n 'e' ; sleep $SLEEPVAL
echo -n 't' ; sleep $SLEEPVAL
echo -n ' ' ; sleep $SLEEPVAL
echo -n 't' ; sleep $SLEEPVAL
echo -n 'h' ; sleep $SLEEPVAL
echo -n 'e' ; sleep $SLEEPVAL
echo -n ' ' ; sleep $SLEEPVAL
echo -n 'b' ; sleep $SLEEPVAL
echo -n 'a' ; sleep $SLEEPVAL
echo -n 'c' ; sleep $SLEEPVAL
echo -n 'k' ; sleep $SLEEPVAL
echo -n 'g' ; sleep $SLEEPVAL
echo -n 'r' ; sleep $SLEEPVAL
echo -n 'o' ; sleep $SLEEPVAL
echo -n 'u' ; sleep $SLEEPVAL
echo -n 'n' ; sleep $SLEEPVAL
echo -n 'd' ; sleep $SLEEPVAL
echo -n '.' ; sleep 1
echo ' '

echo 'Color options are (Case Sensitive): Forrest, Grayed, OceanSun, Submerse'
read background

cd wallpapers

sudo cp * /usr/share/wallpapers/
gsettings get org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/JellyJam-' + "$background" + '.png'
echo Doing my Work...
sleep 2
PID=$!
i=1
sp="/-\|"
echo -n " "
while [ -d /proc/$PID ]
do
  printf "\b${sp:i++%${#sp}:1}"
done

echo Done.

sudo apt update
sudo apt install libglib2.0-dev-bin -y

echo "Do you want to change the default theme for the lockscreen?"
read yn

if [ yn = "y" ]
then
  echo Background or Color or gradient
  read bcg | tr '[:upper:]' '[:lower:]'
  if [ bcg = "background" ]
  then
    echo "Background path (give a vaild path or else it may break the system):"
    read path
    cd script ; chmod +x gdmThemer.sh
    sudo ./gdmThemer.sh --image + $path
    echo Doing my Work...
    sleep 2
    PID=$!
    i=1
    sp="/-\|"
    echo -n " "
    while [ -d /proc/$PID ]
    do
      printf "\b${sp:i++%${#sp}:1}"
    done
    echo Done.
  fi
  if [ bcg = "color" ]
  then
    echo "Type the desired color (in hex code):"
    read hexcode
    cd script ; chmod +x gdmThemer.sh
    sudo ./gdmThemer.sh --color \$hexcode
    echo Doing my Work...
    sleep 2
    PID=$!
    i=1
    sp="/-\|"
    echo -n " "
    while [ -d /proc/$PID ]
    do
      printf "\b${sp:i++%${#sp}:1}"
    done
    echo Done.

  fi
  if [ bcg = "gradient" ]
  then
    echo "Type the desired 1st hex code:"
    read hex1
    echo "Type the desired 2st hex code:"
    read hex2
    echo "Verical or Horizontal: "
    read voh | tr '[:upper:]' '[:lower:]'
    cd script ; chmod +x gdmThemer.sh
    sudo ./gdmThemer.sh --gradient $voh \$hex1 \$hex2
    echo Doing my Work...
    sleep 2
    PID=$!
    i=1
    sp="/-\|"
    echo -n " "
    while [ -d /proc/$PID ]
    do
      printf "\b${sp:i++%${#sp}:1}"
    done
    echo Done.

  fi
fi

if [ yn = "Y" ]
then
  echo Background or Color or gradient
  read bcg | tr '[:upper:]' '[:lower:]'
  if [ bcg = "background" ]
  then
    echo "Background path (give a vaild path or else it may break the system):"
    read path
    cd script ; chmod +x gdmThemer.sh
    sudo ./gdmThemer.sh --image + $path
    echo Doing my Work...
    sleep 2
    PID=$!
    i=1
    sp="/-\|"
    echo -n " "
    while [ -d /proc/$PID ]
    do
      printf "\b${sp:i++%${#sp}:1}"
    done
    echo Done.
  fi
  if [ bcg = "color" ]
  then
    echo "Type the desired color (in hex code):"
    read hexcode
    cd script ; chmod +x gdmThemer.sh
    sudo ./gdmThemer.sh --color \$hexcode
    echo Doing my Work...
    sleep 2
    PID=$!
    i=1
    sp="/-\|"
    echo -n " "
    while [ -d /proc/$PID ]
    do
      printf "\b${sp:i++%${#sp}:1}"
    done
    echo Done.

  fi
  if [ bcg = "gradient" ]
  then
    echo "Type the desired 1st hex code:"
    read hex1
    echo "Type the desired 2st hex code:"
    read hex2
    echo "Verical or Horizontal: "
    read voh | tr '[:upper:]' '[:lower:]'
    cd script ; chmod +x gdmThemer.sh
    sudo ./gdmThemer.sh --gradient $voh \$hex1 \$hex2
    echo Doing my Work...
    sleep 2
    PID=$!
    i=1
    sp="/-\|"
    echo -n " "
    while [ -d /proc/$PID ]
    do
      printf "\b${sp:i++%${#sp}:1}"
    done
    echo Done.

  fi
fi

cd bootlogo
sudo rm -rf /usr/share/plymouth/ubuntu-logo.png
sudo cp ubuntu-logo.png /usr/share/plymouth/
sudo cp ubuntu-logo.png /usr/share/plymouth/themes/spinner/watermark.png

echo "Any (installed) packages/programms to be removed:"
read REMV

sudo apt remove -y "$REMV"

echo "Any packages/programms to be installed:"
read INST

sudo apt install -y "$INST"
clear

echo -n 'L' ; sleep $SLEEPVAL
echo -n 'o' ; sleep $SLEEPVAL
echo -n 'o' ; sleep $SLEEPVAL
echo -n 'k' ; sleep $SLEEPVAL
echo -n 's' ; sleep $SLEEPVAL
echo -n ' ' ; sleep $SLEEPVAL
echo -n 'l' ; sleep $SLEEPVAL
echo -n 'i' ; sleep $SLEEPVAL
echo -n 'k' ; sleep $SLEEPVAL
echo -n 'e' ; sleep $SLEEPVAL
echo -n ' ' ; sleep $SLEEPVAL
echo -n 'y' ; sleep $SLEEPVAL
echo -n 'o' ; sleep $SLEEPVAL
echo -n 'u' ; sleep $SLEEPVAL
echo -n 'r' ; sleep $SLEEPVAL
echo -n ' ' ; sleep $SLEEPVAL
echo -n 'd' ; sleep $SLEEPVAL
echo -n 'o' ; sleep $SLEEPVAL
echo -n 'n' ; sleep $SLEEPVAL
echo -n 'e' ; sleep $SLEEPVAL
echo -n '!' ; sleep 1
echo ' '
echo -n 'P' ; sleep $SLEEPVAL
echo -n 'l' ; sleep $SLEEPVAL
echo -n 'e' ; sleep $SLEEPVAL
echo -n 'a' ; sleep $SLEEPVAL
echo -n 's' ; sleep $SLEEPVAL
echo -n 'e' ; sleep $SLEEPVAL
echo -n " " ; sleep $SLEEPVAL
echo -n 'r' ; sleep $SLEEPVAL
echo -n 'e' ; sleep $SLEEPVAL
echo -n 's' ; sleep $SLEEPVAL
echo -n 't' ; sleep $SLEEPVAL
echo -n 'a' ; sleep $SLEEPVAL
echo -n 'r' ; sleep $SLEEPVAL
echo -n 't' ; sleep $SLEEPVAL
echo -n ' ' ; sleep $SLEEPVAL
echo -n 'y' ; sleep $SLEEPVAL
echo -n 'o' ; sleep $SLEEPVAL
echo -n 'u' ; sleep $SLEEPVAL
echo -n 'r' ; sleep $SLEEPVAL
echo -n ' ' ; sleep $SLEEPVAL
echo -n 'c' ; sleep $SLEEPVAL
echo -n 'o' ; sleep $SLEEPVAL
echo -n 'm' ; sleep $SLEEPVAL
echo -n 'p' ; sleep $SLEEPVAL
echo -n 'u' ; sleep $SLEEPVAL
echo -n 't' ; sleep $SLEEPVAL
echo -n 'e' ; sleep $SLEEPVAL
echo -n 'r' ; sleep $SLEEPVAL
echo -n '.' ; sleep 1

read -p "Please save your work and press enter to continue..."
sudo reboot