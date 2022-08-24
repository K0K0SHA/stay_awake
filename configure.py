# filename: configure.py
# python script for installing pip3 pre-reqs
# run this script with: python3 configure.py 
# if you can't run this script, then your Python doesn't work.
# if Python isn't working, use your package manager or an installer to install Python3
# In the future, miscX will have this functionality.

import os

try:
    import ./miscX as X
except Exception as E:
    print("Error!")
    print(E)
    exit()
