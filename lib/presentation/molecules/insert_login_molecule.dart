import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';

class InsertLoginMolecule extends StatefulWidget {
  const InsertLoginMolecule({
    required this.type,
    required this.vendorsAndServices,
    required this.onChange,
  });

  final InsertloginMoleculeType type;
  final VendorsAndServices vendorsAndServices;
  final Function(VendorLoginEntity) onChange;

  @override
  State<InsertLoginMolecule> createState() => _InsertLoginMoleculeState();
}

class _InsertLoginMoleculeState extends State<InsertLoginMolecule> {
  late VendorLoginEntity loginEntity;

  @override
  void initState() {
    super.initState();
    loginEntity = VendorLoginEntity(widget.vendorsAndServices);
  }

  void onEmailChange(String value) {
    loginEntity = loginEntityCopyWith(loginEntity: loginEntity, email: value);

    widget.onChange(loginEntity);
  }

  void onPasswordChange(String value) {
    loginEntity =
        loginEntityCopyWith(loginEntity: loginEntity, password: value);

    widget.onChange(loginEntity);
  }

  void onApiKeyChange(String value) {
    loginEntity = loginEntityCopyWith(loginEntity: loginEntity, apiKey: value);

    widget.onChange(loginEntity);
  }

  void onAuthTokenChange(String value) {
    loginEntity =
        loginEntityCopyWith(loginEntity: loginEntity, authToken: value);

    widget.onChange(loginEntity);
  }

  VendorLoginEntity loginEntityCopyWith({
    required VendorLoginEntity loginEntity,
    String? apiKey,
    String? authToken,
    String? email,
    String? password,
  }) =>
      VendorLoginEntity(
        loginEntity.vendor,
        apiKey: apiKey ?? loginEntity.apiKey,
        authToken: authToken ?? loginEntity.authToken,
        email: email ?? loginEntity.email,
        password: password ?? loginEntity.password,
      );

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case InsertloginMoleculeType.authToken:
        return TextFormFieldAtom(
          onChanged: onAuthTokenChange,
          labelText: 'Auth Token',
        );
      case InsertloginMoleculeType.apiKey:
        return TextFormFieldAtom(
          onChanged: onApiKeyChange,
          labelText: 'Api Key',
        );
      case InsertloginMoleculeType.emailAndPassword:
        return Column(
          children: [
            TextFormFieldAtom(
              onChanged: onEmailChange,
              labelText: 'Email',
            ),
            TextFormFieldAtom(
              onChanged: onPasswordChange,
              labelText: 'Password',
            ),
          ],
        );
    }
  }
}

enum InsertloginMoleculeType {
  authToken,
  apiKey,
  emailAndPassword,
}
