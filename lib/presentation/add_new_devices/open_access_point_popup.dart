import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:cybear_jinni/presentation/add_new_devices/add_new_cbj_devices.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// Class to warn the user that he need to open access point manually to
/// add new Smart Devices
class OpenHotspotAccessPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Attention',
        style: TextStyle(color: Colors.deepOrange),
      ).tr(),
      content: SizedBox(
        height: MediaQuery.of(context).size.height / 2.5,
        child: Column(
          children: <Widget>[
            const Text('Please Open Access point with the following '
                'credentials in the OS Settings.'),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: FlatButton(
                  color: Colors.black12,
                  onPressed: () {
                    ClipboardManager.copyToClipBoard('CyBear Jinni');
                    Fluttertoast.showToast(
                        msg: 'Copy',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.SNACKBAR,
                        backgroundColor: Colors.lightBlue,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  child: Column(
                    children: const <Widget>[
                      Text('Hotspot name:'),
                      Text(
                        'CyBear Jinni',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: FlatButton(
                  color: Colors.black12,
                  onPressed: () {
                    ClipboardManager.copyToClipBoard('CyBear Jinni');
                    Fluttertoast.showToast(
                        msg: 'Copy',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.SNACKBAR,
                        backgroundColor: Colors.lightBlue,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  child: Column(
                    children: const <Widget>[
                      Text('Hotspot password:'),
                      Text(
                        'CyBear Jinni',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => AddNewCBJDevices()),
              //            Navigator.of(context).pop();
            );
          },
          child: const Text('Continue').tr(),
        ),
      ],
    );
  }
}
