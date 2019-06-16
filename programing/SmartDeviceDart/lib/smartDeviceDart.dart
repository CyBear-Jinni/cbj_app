import 'package:rpi_gpio/gpio.dart';
import 'package:rpi_gpio/rpi_gpio.dart';


class SmartDevice {

  RpiGpio gpio;

  GpioOutput device;
  SmartDevice(int gpioPin){
    gpio = new RpiGpio();
    device = gpio.output(gpioPin);


  }

  void TurnOn(){
    device.value = true;
  }

  void TurnOff(){
    device.value = false;
  }

  void Dispose(){
    gpio.dispose();
  }

}

