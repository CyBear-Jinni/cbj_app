
print ('0');
import RPi.GPIO as GPIO

pin = 7;
print ('1');
GPIO.setmode(GPIO.BOARD);

print ('2');
GPIO.setup(pin, GPIO.OUT);

print ('3');
GPIO.output(pin, GPIO.HIGH);
