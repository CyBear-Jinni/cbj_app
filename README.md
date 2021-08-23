<h1 align="center">CyBear Jinni App</h1>

<div align="center">
  
[![dart CI](https://github.com/CyBear-Jinni/CBJ_App/workflows/Dart%20CI/badge.svg)](https://github.com/CyBear-Jinni/CBJ_App/actions?query=workflow%3A%22Dart+CI%22) [![style: lint](https://img.shields.io/badge/lint-1.3.0-blue)](https://pub.dev/packages/lint) [![License: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0) [<img src="https://badges.frapsoft.com/os/v1/open-source-200x33.png?v=103" height="20">](https://en.wikipedia.org/wiki/Open_source) 
</div>

[<div align="center"><img alt="CyBear Jinni image" height="400" src="https://user-images.githubusercontent.com/62209650/95081236-8e6cbd80-0719-11eb-99b9-8efc34e711b0.png">](https://github.com/CyBear-Jinni/CBJ_Smart-Home)
</div>

# Welcome!

This repository is in charge of the CyBear Jinni App and is part of the [CyBear Jinni Smart Home](https://github.com/CyBear-Jinni/CBJ_Smart-Home) system.

The CyBear Jinni App lets you control and manage the [CyBear Jinni smart devices](https://github.com/CyBear-Jinni/CBJ_Smart-Device) through your Android, IOS and Web Browser.

# CyBear Jinni App

Welcome

This repository is in charge of the CyBear Jinni App and is part of the [CyBear Jinni Smart Home](https://github.com/CyBear-Jinni/CBJ_Smart-Home.git) system.

The CyBear Jinni App lets you control and manage the [CyBear Jinni smart devices](https://github.com/CyBear-Jinni/CBJ_Smart-Device.git) through your Android and IOS smartphones.


The CBJ App is written in [Flutter](https://flutter.dev) and let you control all the CBJ Smart Devices using local Wi-Fi and remotely through Google [Cloud Firestore](https://firebase.google.com/docs/firestore).


## To get the project running

### App preparations:

First install the app

<table align="middle">
  <tr>
    <td> 
      <p>
         <a href="https://play.google.com/store/apps/details?id=com.cybear_jinni.smart_home">
         <img border="0" align="middle" alt="Android Badge" src="https://user-images.githubusercontent.com/9304740/117003444-8b58a080-aced-11eb-94bc-bfb2505f515d.png" width=200>
     </p>
    </td>
  </tr>
</table>

### Connecting the smart device to the CyBear Jinni App:

Make sure your smart device have both [Security Bear](https://snapcraft.io/security-bear) and [Smart Device](https://snapcraft.io/cybear-jinni) installed.


Now we need to link the smart device from inside the phone app.

In the app after login go to: "Devices" tab --> Press the three dots in the top right corner --> Press the "Add Devices" button --> connect the app to home WiFi --> Open Hotspot/Access point in the android settings with the user name and password "CyBear Jinni" --> Choose device and set it up with name and room.

That's it.

Now the new device can be found in "Devices" tab inside his category and can be controlled from our CyBear Jinni App 😁.

## Instructions for developers and testers
To run the app and start developing or testing check [this Wiki](https://github.com/CyBear-Jinni/CBJ_App/wiki/Instructions-for-developers-and-testing).


To learn the coding guidelines check [this Wiki](https://github.com/CyBear-Jinni/CBJ_App/wiki/Coding-guidelines).


## Instructions for creating your own smart home
**Do not** use the default Firebase configuration for your Smart Device devices at home, it is only for testing and development purposes.
The app was not tested on IOS.


Instructions for creating your smart home can be found in the [Wiki page](https://github.com/CyBear-Jinni/CBJ_App/wiki/Instructions-if-you-want-to-make-your-own-smart-home)  


# Social Media Links

[<img src = "https://cdn.icon-icons.com/icons2/1099/PNG/512/1485482199-linkedin_78667.png" height = "80" >](https://www.linkedin.com/company/cybear-jinni)

If you have any questions feel free to ask in our Discord server 

[<img src="https://cdn.icon-icons.com/icons2/2108/PNG/512/discord_icon_130958.png" height="80">](https://discord.gg/mUXfwUY)

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
