import 'package:cybear_jinni/presentation/add_new_devices_process/choose_device_vendor_to_add/choose_device_vendor_to_add_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PlusButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double borderRadius = 5;

    return Scaffold(
      appBar: AppBar(
        title: const Text('What To Add'),
      ),
      backgroundColor: Colors.black.withOpacity(0.7),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius:
                  const BorderRadius.all(Radius.circular(borderRadius)),
              border: Border.all(
                color: Colors.black.withOpacity(0.7),
                width: 0.4,
              ),
            ),
            margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.zero,
                ),
              ),
              onPressed: () {
                Fluttertoast.showToast(
                  msg: 'Currently there is no way to add Scenes',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.SNACKBAR,
                  backgroundColor: Colors.lightBlue,
                  textColor: Theme.of(context).textTheme.bodyText1!.color,
                  fontSize: 16.0,
                );
                // context.router.push(
                //   ScenesRoute(
                //     folderOfScenes: folderOfScenes.fold((l) => null!, (r) => r),
                //   ),
                // );
              },
              child: Column(
                children: [
                  const SizedBox(
                    height: 130,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(borderRadius),
                        bottomLeft: Radius.circular(borderRadius),
                      ),
                    ),
                    child: Text(
                      'New Scene',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius:
                  const BorderRadius.all(Radius.circular(borderRadius)),
              border: Border.all(
                color: Colors.black.withOpacity(0.7),
                width: 0.4,
              ),
            ),
            margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.zero,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ChooseDeviceVendorToAddPage(),
                  ),
                );
              },
              child: Column(
                children: [
                  const SizedBox(
                    height: 130,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(borderRadius),
                        bottomLeft: Radius.circular(borderRadius),
                      ),
                    ),
                    child: Text(
                      'New Device',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
