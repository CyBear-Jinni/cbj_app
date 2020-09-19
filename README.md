# CyBear Jinni Smart Home

Welcome

This repository let you **create** your smart home devices.

You can control does devices using physical buttons and from a smartphone app.

It is **not** "Home automation system" like the project [Home Assistant](https://www.home-assistant.io).

## Project structure:

The project is made out of two main parts:

**FlutterApp**

[FlutterApp](https://github.com/CyBear-Jinni/Smart-Home/tree/dev/FlutterApp) is (you guessed it) the flutter app.
This is the android and ios app that let you control all the devices using local Wi-Fi and remotely through Google [Cloud Firestore](https://firebase.google.com/docs/firestore/).


**SmartDevice**

[SmartDevice](https://github.com/CyBear-Jinni/Smart-Home/tree/dev/SmartDevice) is the smart device software installed on physical device (now only NanoPi Duo2).
It lets you control (for now) only lights and blinds using physical buttons and the phone app.
This part will be published in the snap store in order to have easy way to update all the devices software versions with new features and security updates.


## To get the project running

**Attention**
For now only NanoPi Duo2 is supported as smart-device.
You need to buy and solder the parts into the device yourself.
The app is not in the play store so you will need to upload it to your phone.

Copy [the script](https://github.com/guyluz11/Smart-Home/blob/master/Scripts/Scripts_for_new_device/setup_new_smart_device.sh) to your device,
change the values wifiSsid into the name of your Wi-Fi and wifiPassword into the Wi-Fi password, it is necessary so that your device will be able to connect to the Wi-Fi.
Now run the script and it will configure and install the program to your device.

The device is now ready.

What was left is to have the app on your phone.
For now the app is not in the play store so jump to "Instructions to developers" part.

Now we need to link the device in the app.
Connect the phone to home Wi-Fi.
Go to: Lamps page --> Press the cog in the top right corner --> press the plus button --> insert the smart device IP and press Add.

That's it.


# Instructions for developers
Flutter App:
1. Insert your Firebase configuration into your flutter app.

   Create a [firebase console project](https://console.firebase.google.com) for your home.
   
   Download the google-services.json file from your Firebase console project.

   Location: [https://console.firebase.google.com](https://console.firebase.google.com)  --> Select project --> Click on the left side cog -->
   Project settings (It will take you to the General tab) --> Click "Add app" --> choose "Android" -->
   Fill all the details according you app --> Download google-services.json .

   Move google-services.json to the flutter project to that location:
   SmartHome/FlutterApp/cybear_jinni_flutter/cybear_jinni_flutter/android/app/google-services.json .

2. Copy the following fields values from the google-services.json:
   project_id, current_key 
   into fireBaseProjectId and fireBaseApiKey respectively in the file constant_credentials.dart
   Path to file: SmartHome/FlutterApp/cybear_jinni_flutter/cybear_jinni_flutter/lib/core/constant_credentials.dart
   Don't forget to insert userEmail and userPassword from the firebase into the file as well.

## Architecture

The code is based on DDD (Domain-Driven Design) principles, you can learn it from [here](https://www.youtube.com/watch?v=RMiN59x3uH0&list=PLB6lc7nQ1n4iS5p-IezFFgqP6YvAJy84U).

**Architecture diagram:**

<p align="center">
<img src="https://resocoder.com/wp-content/uploads/2020/03/DDD-Flutter-Diagram-v3.svg" width="400">
</p>


## Disclaimers

**Use at Your Own Risk.**
**We do not take responsibility on any outcome using anything in this repo.**

The project is under heavy work and may contain bugs and incorrect operation instructions.