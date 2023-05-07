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

cd Commands

./setupserver.sh

yes_or_no "Enter your password in the next window. enter y if finished."

cd 

cd downloads

cd i4Restore7

cd futurerestore

echo "please drag the iOS 6 boot ipsw in this window and press enter."

read ios6bootipsw

./futurerestore --use-pwndfu --just-boot=“-v” $ios6bootipsw

echo "thats it! done :)"

exit
