#!/usr/bin/env python3

import RPi.GPIO as GPIO
import time

# Set up PIN 0 as output
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(0, GPIO.OUT)	

on = True

# Every second toggle output
while True:
    GPIO.output(0, on)
    on = not on
    time.sleep(1)
