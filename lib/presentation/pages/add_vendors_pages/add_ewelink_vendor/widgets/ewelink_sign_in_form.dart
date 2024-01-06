import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/snack_bar_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EwelinkSignInForm extends StatefulWidget {
  const EwelinkSignInForm(this.vendor);

  final VendorData vendor;

  @override
  State<EwelinkSignInForm> createState() => _EwelinkSignInFormState();
}

class _EwelinkSignInFormState extends State<EwelinkSignInForm> {
  String? email;
  String? password;

  Future<void> _signInWithEwelink() async {
    if (email == null || password == null) {
      SnackBarService().show(
        context,
        'Please enter Email and Password',
      );
      return;
    }

    SnackBarService().show(
      context,
      'Sign in to eWeLink, devices will appear in the '
      'app after getting discovered',
    );
    context.router.pop();

    final GenericEwelinkLoginDE genericEwelinkDE = GenericEwelinkLoginDE(
      senderUniqueId: CoreLoginSenderId.fromUniqueString('Me'),
      ewelinkAccountEmail: GenericEwelinkAccountEmail(email),
      ewelinkAccountPass: GenericEwelinkAccountPass(password),
    );
    IVendorsRepository.instance.loginWithEwelink(genericEwelinkDE);
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
                    image: NetworkImage(widget.vendor.image ?? ''),
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
                FontAwesomeIcons.at,
              ),
              labelText: 'eWeLink device email',
            ),
            autocorrect: false,
            onChanged: (value) {
              email = value;
            },
            validator: (_) {
              return null;
            },
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: FaIcon(
                FontAwesomeIcons.key,
              ),
              labelText: 'eWeLink device password',
            ),
            autocorrect: false,
            onChanged: (value) {
              password = value;
            },
            validator: (_) {
              return null;
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
                    _signInWithEwelink();
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
