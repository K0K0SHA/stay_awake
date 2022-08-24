# stay_awake is now cross-platform!!! (Coffee for Linux + Windows + Mac + Android) 
------------------------------------------------------------------------------------------------
Script Purpose:
Keeps your PC from falling asleep, no matter what your system settings are set to.
This repository is inspired by https://github.com/elb5465/noSleep with bugfixes and a readme. 
It works by moving mouse a little bit periodically (default 45s).
Alternatively, it can press escape key.
Requires python3 and pip3. 
This script is perfect for reading ebooks, forums, art, etc. 

SETUP[DEBIAN-BASED]:

sudo bash ./config.sh

You need python3 installed on your system. Your system also needs python3-pip and python3-tk. 
If you don't want to use sudo (I don't judge), you still have to ensure the dependencies are
installed already. If that is the case, then copy the python script to /usr/bin and done.

SETUP ON WINDOWS

At this time, there is no batch file for installation using CMD. Windows users will need to use
pip3 to install their dependencies manually, after configuring the correct python packages. 
This script is primarily intended for users of Linux Mint and Ubuntu. 
In theory, this program should still work on Windows. 

RUNNING THE PROGRAM
Once configure.sh is finished successfully, simply run stay_awake. 
In order to run as a daemon, run stay_awake&

RECOMPILING
If you choose to make changes to this code, simply edit stay_awake.py and re-run ./configure

WARNING:
Leaving this script running poses security risks, especially in public.
Also, your mouse will be jerked periodically, so if you happen to click
during this time, results can be unpredictable. If mouse jerking is a 
concern to you, or you just don't want the mouse to shake, then comment
lines 10 and 11 of stay_awake.py, and uncomment line 12. 
Some apps may not be friendly with the escape key press, so you can sub
any key that you want into line into pag.press('KEY') in line 12. 
Most things in Linux do not care about the escape key, though.

Written by:
The legendary hacker K0K0$HA
