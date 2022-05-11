#!/usr/bin/python3
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

while True:
    stayawake()

