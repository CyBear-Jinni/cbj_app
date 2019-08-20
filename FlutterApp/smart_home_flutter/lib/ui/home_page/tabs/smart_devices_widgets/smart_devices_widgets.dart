import 'package:flutter/material.dart';
import 'package:smart_home_flutter/database/firebase/cloud_firestore/firestore_class.dart';
import 'package:smart_home_flutter/ui/home_page/tabs/smart_devices_widgets/settings_page_of_smart_devices.dart';

class SmartDevicesWidgets extends StatelessWidget {
  final Map<String, AssetImage> _simbolsImageList = {
    "conditioner": AssetImage('assets/simbols/air_conditioner.jpg'),
    "blinds": AssetImage('assets/simbols/blinds.jpg'),
    "medical device": AssetImage('assets/simbols/doctor.jpg'),
    "smart phone": AssetImage('assets/simbols/phone1.jpg'),
    "smart speekers": AssetImage('assets/simbols/speekers.jpg'),
  };

  final List<MaterialColor> colorList = Colors.primaries;

  List<Widget> smartDevice(BuildContext context) {
    return _simbolsImageList.keys
        .map((element) => GestureDetector(
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black,
                image: DecorationImage(
                    image: _simbolsImageList[element], fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.black54,),
                  alignment: Alignment.center,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.black54),
                    child: Text(
                      element,
                      style: TextStyle(fontSize: 27),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ),
            onTap: () {
              print("you clicked my");
            }))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(Icons.settings,
                color: Theme.of(context).textTheme.body1.color),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        SettingsPageSmartDevices())),
          ),
        ),
        Text(
          'Smart Devices page',
          style: TextStyle(
              fontSize: 23.0,
              color: Theme.of(context).textTheme.body1.color,
              decoration: TextDecoration.underline),
        ),        Container(
          height: 20,
        ),
        FlatButton(child: Text("Press mee if you can") ,onPressed: (){FireStoreClass();},),
        Expanded(
          child: GridView(
            children: smartDevice(context),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          ),
        ),
      ],
    );
  }
}
