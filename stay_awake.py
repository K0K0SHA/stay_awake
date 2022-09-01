#!/usr/bin/python3
# filename: stay_awake.py
# keeps screen awake
# v 0.9, cross-platform compatibility added
from time import sleep
import pyautogui as pag
import os

print("Keeping screen awake!")

def stayawake():
    print("...")
    pag.move(-10, 0) # simulates mouse shake
    pag.move(10, 0)
    #pag.press('esc') # simulates escape key press
    sleep(45)
# TODO: allow user to configure "poke" keycombo 

while True:
    stayawake()

# code written by K0K0$HA on Github
