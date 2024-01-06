import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybearjinni/presentation/core/snack_bar_service.dart';
import 'package:flutter/material.dart';
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
            VendorsAndServices.espHome.name.toLowerCase()) {
          context.router.push(AddEspHomeVendorRoute(vendor: vendor));
        } else if (vendorName ==
            VendorsAndServices.sonoffEweLink.name.toLowerCase()) {
          context.router.push(AddEwelinkVendorRoute(vendor: vendor));
        } else if (vendorName ==
            VendorsAndServices.philipsHue.name.toLowerCase()) {
          SnackBarService().show(
            context,
            'Please press the button on top of the Philips Hue Hub for and wait 20s',
          );
        } else {
          SnackBarService().show(
            context,
            '${vendor.name.getOrCrash()} devices will be add automatically'
            ' for you',
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
            TextAtom(
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
