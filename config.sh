#!/usr/env/bin
echo "Configuring stay_awake"

if [ "$EUID" -ne 0 ]
  then echo "Running config.sh without root. This will check dependencies, but will not configure them. Please run this as root to attempt installation of dependencies."
  # exit
fi


# stay_awake needs python3 and pip3 to run
check_python() {
    if hash python3 2>/dev/null; then
        echo "Python 3 installed!"
    else
        echo "Python 3 not installed! Try installing with sudo apt-get install python3 or sudo apt-get install python3-dev."
    	echo "...Attempting install!. This will only work with sudo."
	apt-get -y install python3
    fi
}

check_pip() {
    if hash pip3 2>/dev/null; then
	echo "pip3 installed!"
	echo "Installing pyautogui..."
	pip3 install pyautogui # no root needed for pip
    else
	echo "pip3 not installed! Try installing with sudo apt-get install python3-pip, or run this script as sudo."
	apt-get -y install python3-pip
	pip3 install pyautogui
    fi
}

check_tkinter() {
     if hash python3-tk 2>/dev/null; then
        echo "tkinter installed!"
     else
	echo "tkinter not installed! install with sudo apt-get install python3-tk or run this script as root!"
	apt-get -y install python3-tk
    fi
}


finalize_install() {
    PYSCRIPT=./stay_awake.py # name of the source file
    if [ -f "$PYSCRIPT" ]; then
        echo "$PYSCRIPT found! Proceeding..."
        cp $PYSCRIPT ./stay_awake
	chmod +x ./stay_awake
	mv ./stay_awake /usr/bin/stay_awake
	#mv ./stay_awake /bin/stay_awake
	echo "configuration finished! stay_awake may now be run from bash!"
    else
        echo "Please ensure you are working in the directory where stay_awake.py is located!"
	exit
fi

}

check_python
check_pip
check_tkinter
finalize_install

# this install script was created to help install 
# dependencies for stay_awake on Linux
# stay_awake is a terminal utility for Linux which
# keeps the display awake similar to Coffee on Android.
# For more installation instructions, including Windows,
# please refer to README.txt
