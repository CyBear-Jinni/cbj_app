import 'package:CyBearJinni/features/home_page/tabs/smart_devices_tab/settings_page_of_smart_devices.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartDevicesWidgets extends StatelessWidget {
  final Map<String, AssetImage> _symbolsImageList = {
    'conditioner': const AssetImage('assets/simbols/air_conditioner.jpg'),
    'blinds': const AssetImage('assets/simbols/blinds.jpg'),
    'medical device': const AssetImage('assets/simbols/doctor.jpg'),
    'smart phone': const AssetImage('assets/simbols/phone1.jpg'),
    'smart speekers': const AssetImage('assets/simbols/speekers.jpg'),
  };

  final List<MaterialColor> colorList = Colors.primaries;

  List<Widget> smartDevice(BuildContext context) {
    return _symbolsImageList.keys
        .map((String element) => GestureDetector(
              onTap: () {
                print("you clicked " + element.toString());
                Fluttertoast.showToast(
                    msg: element.toString(),
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.blueGrey,
                    textColor: Colors.white,
                    fontSize: 16.0);
                if (element.toString() == "blinds") {
                  Navigator.pushNamed(
                    context,
                    '/devices/' + element.toString(),
                  );
                }
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black,
                  image: DecorationImage(
                      image: _symbolsImageList[element], fit: BoxFit.cover),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black54,
                    ),
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
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(FontAwesomeIcons.cog,
                color: Theme
                    .of(context)
                    .textTheme
                    .bodyText1
                    .color),
            onPressed: () =>
                Navigator.push(
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
              color: Theme
                  .of(context)
                  .textTheme
                  .bodyText1
                  .color,
              decoration: TextDecoration.underline),
        ),
        Container(
          height: 20,
        ),
        Expanded(
          child: GridView(
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: smartDevice(context),
          ),
        ),
      ],
    );
  }
}
