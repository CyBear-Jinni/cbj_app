import 'package:cbj_integrations_controller/domain/vendors/i_vendor_repository.dart';
import 'package:cbj_integrations_controller/domain/vendors/lifx_login/generic_lifx_login_entity.dart';
import 'package:cbj_integrations_controller/domain/vendors/lifx_login/generic_lifx_login_value_objects.dart';
import 'package:cbj_integrations_controller/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cbj_integrations_controller/domain/vendors/vendor_data.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LifxSignInForm extends StatefulWidget {
  const LifxSignInForm(this.vendor);

  final VendorData vendor;

  @override
  State<LifxSignInForm> createState() => _LifxSignInFormState();
}

class _LifxSignInFormState extends State<LifxSignInForm> {
  String? api;

  Future<void> _signInWithApiKey() async {
    Fluttertoast.showToast(
      msg: 'Sign in to Lifx, devices will appear in the shortly',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.deepPurple,
      textColor: Theme.of(context).textTheme.bodyLarge!.color,
      fontSize: 16.0,
    );
    final GenericLifxLoginDE genericLifxDE = GenericLifxLoginDE(
      senderUniqueId: CoreLoginSenderId.fromUniqueString('Me'),
      lifxApiKey: GenericLifxLoginApiKey(api),
    );
    IVendorsRepository.instance.loginWithLifx(genericLifxDE);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Expanded(
          child: Form(
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
                    labelText: 'Lifx API Key',
                  ),
                  autocorrect: false,
                  onChanged: (value) {
                    api = value;
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
                          _signInWithApiKey();
                        },
                        child: const TextAtom('SIGN IN'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.pink),
            ),
            onPressed: () {
              launchUrl(Uri.parse('https://cloud.lifx.com/'));
            },
            child: TextAtom(
              'Get Lifx API key from Lifx website',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
