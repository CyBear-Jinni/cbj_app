import 'package:cybear_jinni/domain/vendors/vendor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';

class VendorWidget extends StatelessWidget {
  VendorWidget(this.vendor);

  final Vendor vendor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Fluttertoast.showToast(
            msg: vendor.name.getOrCrash(),
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.SNACKBAR,
            backgroundColor: Colors.lightBlue,
            textColor: Theme.of(context).textTheme.bodyText1!.color,
            fontSize: 16.0);
      },
      child: Container(
        height: 100,
        color: HexColor('#C4C4C4').withOpacity(0.2),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    vendor.image ??
                        'http://www.clker.com/cliparts/f/Z/G/4/h/Q/no-image-available-th.png',
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Text(
              vendor.name.getOrCrash(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
    // return Container(
    //   decoration: BoxDecoration(
    //     color: Colors.black,
    //     image: DecorationImage(
    //       image: NetworkImage(
    //         folderOfScenes.fold((l) => null!, (r) => r.backgroundImageUrl!),
    //       ),
    //       fit: BoxFit.cover,
    //     ),
    //     borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
    //     border: Border.all(
    //       color: Colors.black.withOpacity(0.7),
    //       width: 0.4,
    //     ),
    //   ),
    //   margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
    //   child: TextButton(
    //     style: ButtonStyle(
    //       padding: MaterialStateProperty.all<EdgeInsets>(
    //         EdgeInsets.zero,
    //       ),
    //     ),
    //     onPressed: () {
    //       context.router.push(ScenesRoute(
    //         folderOfScenes: folderOfScenes.fold((l) => null!, (r) => r),
    //       ));
    //     },
    //     child: Column(
    //       children: [
    //         const SizedBox(
    //           height: 130,
    //         ),
    //         Container(
    //           width: double.infinity,
    //           decoration: BoxDecoration(
    //             color: Colors.black.withOpacity(0.7),
    //             borderRadius: const BorderRadius.only(
    //               bottomRight: Radius.circular(borderRadius),
    //               bottomLeft: Radius.circular(borderRadius),
    //             ),
    //           ),
    //           child: Text(
    //             folderOfScenes.fold((l) => 'NoName', (r) => r.name!),
    //             style: TextStyle(
    //                 color: Theme.of(context).textTheme.bodyText1!.color,
    //                 fontSize: 30),
    //             textAlign: TextAlign.center,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
