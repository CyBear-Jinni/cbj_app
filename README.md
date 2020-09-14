# SmartHome

## Project structure:

The project is made out of two main parts:

**FlutterApp**

[FlutterApp](https://github.com/CyBear-Jinni/Smart-Home/tree/dev/FlutterApp) is (you guessed it) the flutter app.
It is storing the code for the android and ios apps.

**SmartDevice**

[SmartDevice](https://github.com/CyBear-Jinni/Smart-Home/tree/dev/SmartDevice) is the smart device software installed on physical device (now only NanoPi Duo2).
It lets you control (for now) only lights and blinds using the app and physical buttons.
This part will be published in the snap store in order to have easy way to update all the devices software versions with new features and security updates.

# To get the project running
Flutter App:
1. Insert your Firebase configuration into your flutter app.
   Started by downloading google-services.json from Firebase console.

   Location: https://console.firebase.google.com/  --> Select project --> Click on the left side cog -->
   Project settings (It will take you to the General tab) --> Click "Add app" --> choose "Android" -->
   Fill all the details according you ure app --> Download google-services.json

   Move google-services.json to 
   SmartHome/FlutterApp/cybear_jinni_flutter/cybear_jinni_flutter/android/app/google-services.json

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
