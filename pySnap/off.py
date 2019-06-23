#!/usr/bin/env python3

import RPi.GPIO as GPIO

pin = 7
GPIO.setmode(GPIO.BOARD)
GPIO.setup(pin, GPIO.OUT)
GPIO.output(pin, GPIO.LOW)
