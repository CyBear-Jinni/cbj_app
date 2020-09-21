# CyBear Jinni Smart Home

Welcome

This repository let you **create** your smart home devices.

You can control these devices using physical buttons and from a smartphone app.

It is **not** "Home automation system" like the project [Home Assistant](https://www.home-assistant.io).

## Project structure

The project is made out of two main parts:

### Phone app

[FlutterApp](https://github.com/CyBear-Jinni/Smart-Home/tree/master/FlutterApp/cybear_jinni_flutter/cybear_jinni_flutter) is (you guessed it) the flutter app.
This is the android and ios app written in [Flutter](https://flutter.dev) that let you control all the devices using local Wi-Fi and remotely through Google [Cloud Firestore](https://firebase.google.com/docs/firestore).


### Smart Device

[SmartDevice](https://github.com/CyBear-Jinni/Smart-Home/tree/master/SmartDevice/SmartDeviceDart) is the smart device software installed on physical device (now only NanoPi Duo2).
It lets you control (for now) only lights and blinds using physical buttons and the phone app.
This part will be published in the snap store in order to have easy way to update all the devices software versions with new features and security updates.


## To get the project running

### Attention

* For now only NanoPi Duo2 is supported as smart device.

* You need to buy and solder the parts into the device yourself.

* The app is not in the play store so you will need to upload it to your phone with a little knowledge about [Flutter](https://flutter.dev).

### Smart device preparations:

Copy [the script](https://github.com/CyBear-Jinni/Smart-Home/blob/master/Scripts/Scripts_for_new_device/setup_new_smart_device.sh) to your device,
change the values wifiSsid into the name of your Wi-Fi and wifiPassword into the Wi-Fi password, it is necessary so that your device will be able to connect to the Wi-Fi.
Now run the script and it will configure and install the program to your device.

It is recommended to lock the IP of the smart device in the router settings.

The device is now ready.

### Phone app preparations:

We need to install the app to your phone.
For now the app is not in the play store so jump to [Instructions for developers](#instructions-for-developers) part and do it manually.

### Connecting the smart device to the phone app:

Find the smart device Wi-Fi IP, it will be something like 10.0.0.12 .

Connect the phone to your home Wi-Fi.

Now we need to link the smart device inside the phone app.

In the app go to: "Lamps" tab --> Press the cog in the top right corner --> Press the plus button --> Insert the smart device IP and press "Add" --> Change the device name and press the "Update" button --> Press the "Add devices".

That's it.

Now you can control your smart device from the phone app 😁.


## Instructions for developers
### Flutter App:
1. Insert your Firebase configuration into your flutter app.

   * Create a [firebase console project](https://console.firebase.google.com) for your smart home.
   
   * Add authentication user
   
   Location: [https://console.firebase.google.com](https://console.firebase.google.com) --> Select project --> In the left side navigation drawer under the "Develop" click the "Authentication" text --> Click the button "Add user" --> Fill email and password and press "Add user" button.
   
   * Download the google-services.json file from your Firebase console project.

   Location: [https://console.firebase.google.com](https://console.firebase.google.com) --> Select project --> In the left side navigation drawer click on the cog at the top -->
   Project settings (It will take you to the General tab) --> Click "Add app" --> choose "Android" -->
   Fill all the details according you app --> Download google-services.json .

   Move google-services.json into the flutter project to the [.../android/app/](https://github.com/CyBear-Jinni/Smart-Home/tree/master/FlutterApp/cybear_jinni_flutter/cybear_jinni_flutter/android/app) folder.

2. Copy the following fields values from the google-services.json:

   project_id, current_key 
   
   into the file [constant_credentials.dart](https://github.com/CyBear-Jinni/Smart-Home/blob/master/FlutterApp/cybear_jinni_flutter/cybear_jinni_flutter/lib/core/constant_credentials.dart) to
   
   fireBaseProjectId, fireBaseApiKey
   
   fields respectively.
      
   In the [same file](https://github.com/CyBear-Jinni/Smart-Home/blob/master/FlutterApp/cybear_jinni_flutter/cybear_jinni_flutter/lib/core/constant_credentials.dart) insert the firebase account credentials (email and password) that we created earlier into the fields
   
   userEmail, userPassword.
   
   Congratulations now deploy the app to your phone and you can connect to the smart devices with your own Cloud Firebase.

## Architecture

The code is based on DDD (Domain-Driven Design) principles, you can learn it from [here](https://www.youtube.com/watch?v=RMiN59x3uH0&list=PLB6lc7nQ1n4iS5p-IezFFgqP6YvAJy84U).

**Architecture diagram:**

<p align="center">
<img src="https://resocoder.com/wp-content/uploads/2020/03/DDD-Flutter-Diagram-v3.svg" width="400">
</p>


## Disclaimers

**Use at Your Own Risk,**
**we do not take responsibility on any outcome using anything in this repo.**

The project is under heavy work and may contain bugs and incorrect instructions.