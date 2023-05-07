#!/BIN/BASH

read -p "did you install macports? [yn]" answer
if [[ $answer = y ]] ; then
	continue
else
	exit
fi

cd

xcode-select --install

read -p "Hit Install on the next window. After it is finished, type y. [yn]" answer
if [[ $answer = y ]] ; then
  sudo port install idevicerestore
fi

echo "You can now proceed to the next step."

sleep 5

exit
