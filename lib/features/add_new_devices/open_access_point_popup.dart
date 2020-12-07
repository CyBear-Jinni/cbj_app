import 'package:CyBearJinni/features/add_new_devices/add_new_cbj_devices.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// Class to warn the user that he need to open access point manually to
/// add new Smart Devices
class OpenHotspotAccessPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Attention', style: TextStyle(color: Colors.deepOrange),).tr(),
      content: Container(
        height: MediaQuery.of(context).size.height/2.5,
        child: Column(
          children: const <Widget>[
            Text('Please Open Access point with the following '
                'credentials in the OS Settings'),
            SizedBox(height: 12,),
            Text('Hotspot name:'),
            Text('AndroidAP_6194', style: TextStyle(fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),
            Text('Hotspot password:'),
            Text('7f1ee6787744', style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      AddNewCBJDevices()),
              //            Navigator.of(context).pop();
            );
          },
          child: const Text('Continue').tr(),
        ),
      ],
    );
  }

}

