<h1 align="center">CyBear Jinni App</h1>

[![CyBear Jinni](https://user-images.githubusercontent.com/9304740/94843279-24a49900-0425-11eb-83f3-87e8ba40b1dc.png)](https://github.com/CyBear-Jinni/CBJ_Smart-Home)

<div align="center">

[![dart CI](https://github.com/CyBear-Jinni/CBJ_App/workflows/Dart%20CI/badge.svg)](https://github.com/CyBear-Jinni/CBJ_App/actions?query=workflow%3A%22Dart+CI%22) [![style: lint](https://img.shields.io/badge/lint-1.3.0-blue)](https://pub.dev/packages/lint) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) [![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)](https://en.wikipedia.org/wiki/Open_source)
</div>

# Welcome!

This repository is in charge of the CyBear Jinni App and is part of the [CyBear Jinni Smart Home](https://github.com/CyBear-Jinni/CBJ_Smart-Home.git) system.

The CyBear Jinni App lets you control and manage the [CyBear Jinni smart devices](https://github.com/CyBear-Jinni/CBJ_Smart-Device.git) through your Android and IOS smartphones.

The CBJ App is written in [Flutter](https://flutter.dev) and let you control all the CBJ Smart Devices using local Wi-Fi and remotely through Google [Cloud Firestore](https://firebase.google.com/docs/firestore).


## To get the project running

### Attention

* The app is not in the play store so you will need to upload it to your smartphone with a little knowledge about [Flutter](https://flutter.dev).


### App preparations:

We need to install the app to your smartphone.

For now the app is not in the play store so install the [flutter project](https://github.com/CyBear-Jinni/CBJ_App/tree/dev/FlutterApp/cybear_jinni_flutter/cybear_jinni_flutter) to your phone manually.

[Instructions for developers](#instructions-for-developers) part is needed in order to connect the application to the smart devices, if you do not intend to do so than you can just run the app without extra steps.




### Connecting the smart device to the CyBear Jinni App:

Find the smart device Wi-Fi IP, it will be something like 10.0.0.12 .

Connect the phone to your home Wi-Fi.

Now we need to link the smart device from inside the phone app.

In the app go to: "Lamps" tab --> Press the cog in the top right corner --> Press the plus button --> Insert the smart device IP and press "Add" --> Change the device name and press the "Update" button --> Press the "Add devices".

That's it.

Now you can control your smart device from the CyBear Jinni App 😁.


## Instructions for developers

* This part is only required if you are going to connect the application to the smart devices, if not you can just run the app without extra steps. 

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


# Social Media Links

If you have any questions feel free to ask in our Discord server 

[<img src="https://cdn.icon-icons.com/icons2/2108/PNG/512/discord_icon_130958.png" height="80">](https://discord.gg/mUXfwUY)
