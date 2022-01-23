import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/domain/vendors/vendor.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';

class VendorWidget extends StatelessWidget {
  const VendorWidget(this.vendor);

  final Vendor vendor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final String vendorName = vendor.name
            .getOrCrash()
            .toLowerCase()
            .replaceAll(' ', '')
            .replaceAll('_', '');

        if (vendorName == VendorsAndServices.lifx.name.toLowerCase()) {
          context.router.push(const AddLifxVendorRoute());
        } else if (vendorName ==
            VendorsAndServices.tuyaSmart.name.toLowerCase()) {
          context.router.push(const AddTuyaVendorRoute());
        } else if (vendorName ==
            VendorsAndServices.smartLife.name.toLowerCase()) {
          context.router.push(const AddSmartLifeVendorRoute());
        } else if (vendorName ==
            VendorsAndServices.jinvooSmart.name.toLowerCase()) {
          context.router.push(const AddJinvooSmartVendorRoute());
        } else if (vendorName ==
                VendorsAndServices.tasmota.name.toLowerCase() ||
            vendorName == VendorsAndServices.espHome.name.toLowerCase()) {
          Fluttertoast.showToast(
            msg: '${vendor.name.getOrCrash()} devices can only be added '
                'manually in the Hub',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.SNACKBAR,
            backgroundColor: Colors.orangeAccent,
            textColor: Theme.of(context).textTheme.bodyText1!.color,
            fontSize: 16.0,
          );
        } else {
          Fluttertoast.showToast(
            msg: '${vendor.name.getOrCrash()} devices will be add automatically'
                ' for you',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.SNACKBAR,
            backgroundColor: Colors.lightBlue,
            textColor: Theme.of(context).textTheme.bodyText1!.color,
            fontSize: 16.0,
          );
        }
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
              width: 10,
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
  }
}
