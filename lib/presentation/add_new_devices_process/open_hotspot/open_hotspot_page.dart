import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OpenHotspotPage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: const [0.06, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.grey,
              Theme.of(context).primaryColor,
            ],
          ),
        ),
        child: Column(
          children: [
            TopNavigationBar(
              'Add Devices',
              null,
              () {},
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width - 20,
              decoration: const BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              alignment: Alignment.center,
              child: Text(
                'Open hotspot',
                style: TextStyle(
                    fontSize: 25,
                    color: Theme.of(context).textTheme.bodyText1.color),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Expanded(
              child: Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: Column(
                    children: <Widget>[
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
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white60,
                                  ),
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
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white60,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        // ignore: lines_longer_than_80_chars
                        child: const Text(
                          'Please Open Access point with the following '
                          'credentials in the OS Settings.',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                      color: Colors.blueGrey,
                      onPressed: () {},
                      child: const Text(
                        'Next',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
