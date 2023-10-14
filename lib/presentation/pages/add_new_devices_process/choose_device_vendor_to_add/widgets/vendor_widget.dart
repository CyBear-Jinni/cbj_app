import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/domain/vendors/vendor_data.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';

class VendorWidget extends StatelessWidget {
  const VendorWidget(this.vendor);

  final VendorData vendor;

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
          context.router.push(AddLifxVendorRoute(vendor: vendor));
        } else if (vendorName ==
            VendorsAndServices.tuyaSmart.name.toLowerCase()) {
          context.router.push(AddTuyaVendorRoute(vendor: vendor));
        } else if (vendorName ==
            VendorsAndServices.smartLife.name.toLowerCase()) {
          context.router.push(AddSmartLifeVendorRoute(vendor: vendor));
        } else if (vendorName ==
            VendorsAndServices.jinvooSmart.name.toLowerCase()) {
          context.router.push(AddJinvooSmartVendorRoute(vendor: vendor));
        } else if (vendorName ==
            VendorsAndServices.espHome.name.toLowerCase()) {
          context.router.push(AddEspHomeVendorRoute(vendor: vendor));
        } else if (vendorName ==
            VendorsAndServices.xiaomiMi.name.toLowerCase()) {
          context.router.push(AddXiaomiMiVendorRoute(vendor: vendor));
        } else if (vendorName ==
            VendorsAndServices.sonoffEweLink.name.toLowerCase()) {
          context.router.push(AddEwelinkVendorRoute(vendor: vendor));
        } else if (vendorName ==
            VendorsAndServices.philipsHue.name.toLowerCase()) {
          Fluttertoast.showToast(
            msg:
                'Please press the button on top of the Philips Hue Hub for and wait 20s',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.SNACKBAR,
            backgroundColor: Colors.orangeAccent,
            textColor: Theme.of(context).textTheme.bodyLarge!.color,
            fontSize: 16.0,
          );
        } else {
          Fluttertoast.showToast(
            msg: '${vendor.name.getOrCrash()} devices will be add automatically'
                ' for you',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.SNACKBAR,
            backgroundColor: Colors.lightBlue,
            textColor: Theme.of(context).textTheme.bodyLarge!.color,
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
