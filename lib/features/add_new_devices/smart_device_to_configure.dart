import 'package:CyBearJinni/core/theme_data.dart';
import 'package:CyBearJinni/features/shared_widgets/insert_details_of_new_device.dart';
import 'package:CyBearJinni/objects/smart_device/smart_device_object.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SmartDeviceToConfigure extends StatelessWidget {

  SmartDeviceToConfigure(this.smartDeviceObject);

  SmartDeviceObject smartDeviceObject;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.black54,
      child: Column(
        children: <Widget>[
          Text('Device Name: ${smartDeviceObject.name}', style: TextStyle(fontSize: 21),),
          // Text('Device ip: ${smartDeviceObject.ip}', style: TextStyle(fontSize: 21)),
          Text('Device type: ${smartDeviceObject.deviceType}', style: TextStyle(fontSize: 22)),
          const SizedBox(height: 20,),
          FlatButton(
            color: Colors.lightGreen,
            child: const Text('Edit device', style: TextStyle(color: Colors.white),),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        InsertDetailsOfNewDevice(smartDeviceObject.ip, GradientColors.mango)),
                //            Navigator.of(context).pop();
              );
            },
          )
        ],
      ),
    );
  }
}