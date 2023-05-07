#!/bin/bash

function yes_or_no {
    while true; do
        read -p "$* [y/n]: " yn
        case $yn in
            [Yy]*) return 0  ;;
            [Nn]*) echo "Aborted" ; return  1 ;;
        esac
    done
}

echo "now we are going to put your ipod into dfu mode. Follow the Instructions:"

sleep 1.5

echo "press the home and power button at the same time for about 10 seconds"

sleep 11

echo "now release the power button but still hold the HOME BUTTON for around 10 seconds."

sleep 15

cd

cd downloads

cd i4Restore7

cd ipwndfu-master

./ipwndfu -p

echo "Now drag in the Custom IPSW from the Custom7IPSW folder and press enter."

read customios7ipsw

idevicerestore -c $customios7ipsw

sleep 5 

echo "now enter dfu mode again. to do this, follow the instructions here: "

sleep 1.5

echo " hold the home and power button down together for around 10 seconds"

sleep 10

echo " release the power but STILL HOLD THE HOME BUTTON for around 10 seconds"

sleep 11

cd 

cd i4Restore7

cd Commands

./setupserver.sh

yes_or_no "enter your password in the next window. Type y if finished."

cd

cd downloads

cd i4Restore7

cd ipwndfu-master

for i in {1..3}; do
./ipwndfu -p
done

sleep 5

cd

cd downloads

cd i4Restore7

cd futurerestore

echo "drag the iOS 6 boot iPSW in this window ad press enter."

read ios6bootipsw

./futurerestore --use-pwndfu --just-boot=“-v" $ios6bootipsw

echo "thats it! done :)"

exit

