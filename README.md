# stay_awake
------------------------------------------------------------------------------------------------
Script Purpose:
Keeps your PC from falling asleep. Setup and config check included for Mint/Ubuntu/Debian/Kali. 
This repository is inspired by https://github.com/elb5465/noSleep with bugfixes and a readme. 
It works by moving mouse a tiny bit periodically. Requires python3 and pip3. 

SETUP[DEBIAN-BASED]:

sudo bash ./config.sh

You need python3 installed on your system. Your system also needs python3-pip and python3-tk. 

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
