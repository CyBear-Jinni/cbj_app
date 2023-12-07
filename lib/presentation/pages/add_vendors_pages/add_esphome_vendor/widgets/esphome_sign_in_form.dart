import 'package:cbj_integrations_controller/domain/vendors/esphome_login/generic_esphome_login_entity.dart';
import 'package:cbj_integrations_controller/domain/vendors/esphome_login/generic_esphome_login_value_objects.dart';
import 'package:cbj_integrations_controller/domain/vendors/i_vendor_repository.dart';
import 'package:cbj_integrations_controller/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cbj_integrations_controller/domain/vendors/vendor_data.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/snack_bar_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EspHomeSignInForm extends StatefulWidget {
  const EspHomeSignInForm(this.vendor);

  final VendorData vendor;

  @override
  State<EspHomeSignInForm> createState() => _EspHomeSignInFormState();
}

class _EspHomeSignInFormState extends State<EspHomeSignInForm> {
  String? password;

  void _login() {
    if (password == null) {
      return;
    }

    Navigator.pop(context);

    IVendorsRepository.instance.loginWithEspHome(
      GenericEspHomeLoginDE(
        espHomeDevicePass: GenericEspHomeDeviceLoginApiPass(password),
        senderUniqueId: CoreLoginSenderId.fromUniqueString('Me'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Hero(
            tag: 'Logo',
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: screenSize.height * 0.1,
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      widget.vendor.image ?? '',
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              // ImageAtom('assets/cbj_logo.png'),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: FaIcon(
                FontAwesomeIcons.key,
              ),
              labelText: 'ESPHome device password',
            ),
            autocorrect: false,
            onChanged: (value) {
              password = value;
            },
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    _login();

                    SnackBarService().show(
                      context,
                      'Sign in to ESPHome, devices will appear in the '
                      'app after getting discovered',
                    );
                    Navigator.pop(context);
                  },
                  child: const TextAtom('SIGN IN'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
