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

1. Insert your FireBase Project Id and FireBase Web Api Key into constant_credentials.dart
Location: https://console.firebase.google.com/ --> Select project --> Click on the left side cog -->
project settings (It will take you to the General tab)
Now copy "Project ID" and "Web API key" to 
SmartHome/SmartDevice/SmartDeviceDart/lib/core/constant_credentials.dart
into the values of the variables fireBaseProjectId and fireBaseWebApiKey respectively.