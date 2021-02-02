import 'package:cybear_jinni/infrastructure/core/shared_methods.dart';
import 'package:cybear_jinni/infrastructure/objects/security_bear/client/security_bear_server_client.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class InsertWiFiCredentialPopup extends StatefulWidget {
  const InsertWiFiCredentialPopup(this._deviceIp, this._wiFiName);

  final String _wiFiName;

  final String _deviceIp;

  @override
  State<StatefulWidget> createState() {
    return _InsertWiFiCredentialPopup(_deviceIp, _wiFiName);
  }
}

class _InsertWiFiCredentialPopup extends State<InsertWiFiCredentialPopup> {
  _InsertWiFiCredentialPopup(this._deviceIp, String wiFiName) {
    _wiFiName = wiFiName;
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static String _wiFiName;
  static String _wiFiPassword;

  final String _deviceIp;

  static Future<String> getConnectedWiFiName() async {
    return getCurrentWifiName();
  }

//  await (Connectivity().getWifiName());wifi network
  Widget addNewDeviceWidget = ListBody(
    children: <Widget>[
      FutureBuilder<String>(
        future: getConnectedWiFiName(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: <Widget>[
                TextFormField(
                  initialValue: snapshot.data,
                  onSaved: (String wifiName) => _wiFiName = wifiName,
                  keyboardType: TextInputType.text,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'WiFi_name_is_required'.tr();
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'WiFi_Name'.tr(),
                  ),
                ),
                TextFormField(
                  autofocus: true,
                  onSaved: (String wiFiPassword) =>
                      _wiFiPassword = wiFiPassword,
                  keyboardType: TextInputType.text,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'WiFi_password_is_required'.tr();
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'WiFi_Password'.tr(),
                  ),
                ),
              ],
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: AlertDialog(
        title: const Text('Insert_WiFi_Credentials').tr(),
        content: SingleChildScrollView(
          child: addNewDeviceWidget,
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel').tr(),
          ),
          FlatButton(
            onPressed: () {
              _formKey.currentState.save();

              Fluttertoast.showToast(
                  msg: 'WiFi name: $_wiFiName\n WiFi password: $_wiFiPassword',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  backgroundColor: Colors.blueGrey,
                  textColor: Colors.white,
                  fontSize: 16.0);

              SecurityBearServerClient.setWiFisInformation(
                  _deviceIp, _wiFiName, _wiFiPassword);

              Navigator.pop(context);
            },
            child: const Text('Add').tr(),
          ),
        ],
      ),
    );
  }
}
