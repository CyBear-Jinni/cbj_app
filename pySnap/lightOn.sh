#!/bin/bash

echo "Hello, World!" 
FILE1=$1
echo $FILE1
pwd
ls
echo "Done here"
echo 
echo $OLDPWD
echo "Next"

#snap/mainb/current/WiringNP/gpio/gpio 
python3 $FILE1/myprogram.py
#python on.py


