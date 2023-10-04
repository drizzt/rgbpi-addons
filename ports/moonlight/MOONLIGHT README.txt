Source of installer: https://github.com/moonlight-stream/moonlight-qt


Pre reqs:
-READ ALL OF THIS
-Your pi must be connected to the internet to install
-Out of the box Moonlight requires a nvidia video card on your source PC
-AMD Cards use https://github.com/LizardByte/Sunshine
-Hardwire network your pi if possible
-If you have any issues with moonlight like latency etc. Go to the moonlight subreddit.


Install Directions:
-Unzip and move all the files into your ports folder, they can go inside another folder if you would like
-Scan for new games in rgbpi ui
-Go to folder 
-Run installmoonlight
-Wait a few minutes while it downloads everything and installs (Installer deletes itself and with go away next time you scan for games)
-Pi Reboots itself
-Run Moonlight
	
There is a second Moonlight launcher called Left Shift. This one shifts the image to the left a tiny bit. My CRT needed it so I included it. Try both and see which works best for you. You can delete the one that is not centered.


Running directions:
-Go into the moonlight settings (Y on my controller), scroll with right thumbstick or plugin a keyboard/mouse and use scroll wheel
	- MUST DO - Change output resolution to Native (720x480). DO NOT USE 720p
	-If latency is an issue change the codec to x264