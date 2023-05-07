#ipodtouch4ios7

Scripting made by AppleHelper Mark
Youtube: https://youtube.com/@AppleHelperMark
Twitter: https://twitter.com/applehelpermark
Instagram: https://instagram.com/applehelpermark

Credits: @91_Tech for the Instructions (Youtube + Twitter + Instagram) and @Ralph0045 for exploit

About: This package can (almost) automate the process of installing iOS 7 on your iPod touch 4 Gen.				



						NOTE: 



this will erase all data on your iPod touch! iOS 7 can only be installed on 8GB, 32GB and 64GB iPod touch models. 16GB ones are not supported. You can try it but it is not going to succeed. The Wifi and Bluetooth won't function sadly. There is no guarantee this will work. This could result in a boot loop or bricking your iPod. As mentioned, iOS 7 is very unstable on the iPod. There could be some crashing and issues. Not all models are supported! I am NOT responsible for any damages that may happen.




Other than that, feel free to Install iOS 7 on your iPod touch 4!



					INSTRUCTIONS:



1. run the requirements.sh file
2. open the restoreandboot.sh file and follow the instructions that you may get.
3. Thats it! If you need to boot back because the iPod rebooted or died just open the enterios7futurerestore.sh file and follow the instructions.

5. and BOOM! It's done, it's that simple! Enjoy it :)

Here are the manual exact instructions if you need it for some reason:


				INSTRUCTIONS (manually):

Open terminal;
Type: cd <path to ipwndfu folder>;
Type: ./ipwndfu -p;
Open iTunes. It should say your device is in recovery mode. Option/Alt click "restore iPod" and select the custom iOS 7.0 firmware.  Now wait for it to restore.

How to boot:

Open terminal;
Type: cd <path to Keys Server folder>;
Type: sudo python -m SimpleHTTPServer 80;
Put the device in pwned DFU mode using ipwndfu; (as done earlier)
Open new terminal window;
Type: cd <path to futurerestore folder>;
Type: ./futurerestore --use-pwndfu --just-boot=“-v” /Users/*name of home folder*/Custom7ipsw/iPod4,1_6.1.6_10B500_Restore.ipsw
If something is not working please refer back to the video tutorial by me (link:
