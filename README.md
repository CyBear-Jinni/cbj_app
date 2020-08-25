# SmartHome


To get the project running on your machine please do the following:

**Flutter App**

1. Insert your Firebase configuration into your flutter app.
Started by downloading google-services.json from Firebase console.

Location: https://console.firebase.google.com/  --> Select project --> Click on the left side cog -->
Project settings (It will take you to the General tab) --> Click "Add app" --> choose "Android" -->
Fill all the details according you ure app --> Download google-services.json

Move google-services.json to 
SmartHome/FlutterApp/cybear_jinni_flutter/cybear_jinni_flutter/android/app/google-services.json


**Smart Device**

1. Insert your FireBase Project Id and FireBase Api Key into constant_credentials.dart .
Open the google-services.json from part one in the Flutter steps, and copy the values of the 
variables from "project_id" and "current_key" into the into the values of the variables
fireBaseProjectId and fireBaseApiKey respectively in the file
SmartHome/SmartDevice/SmartDeviceDart/lib/core/constant_credentials.dart





The code is based on DDD (Domain-Driven Design) principles, you can learn it from [here](https://www.youtube.com/watch?v=RMiN59x3uH0&list=PLB6lc7nQ1n4iS5p-IezFFgqP6YvAJy84U).

This is a diagram of the architecture

<img src="https://resocoder.com/wp-content/uploads/2020/03/DDD-Flutter-Diagram-v3.svg" height="450">
