import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

/// Page for adding new scene
class AddScenePage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
        color: HexColor('#FBF5F9'),
        child: Column(
          children: [
            TopNavigationBar(
              pageName: 'Add Scene',
              rightIcon: null,
              rightIconFunction: backButtonFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: FaIcon(FontAwesomeIcons.fileSignature),
                      labelText: 'Scene Name',
                    ),
                    autocorrect: false,
                    onChanged: (value) {},
                    //   =>context
                    //       .read<TuyaSignInFormBloc>()
                    //       .add(TuyaSignInFormEvent.userNameChanged(value)),
                    //   validator: (_) => context
                    //       .read<TuyaSignInFormBloc>()
                    //       .state
                    //       .tuyaUserName
                    //       .value
                    //       .fold(
                    //         (CoreLoginFailure f) => 'Validation error',
                    //     //   f.maybeMap(
                    //     // invalidEmail: (result) => result.failedValue,
                    //     // containsSpace: (result) => result.failedValue,
                    //     // orElse: () => null,
                    //     // ),
                    //         (r) => null,
                    //   ),
                  ),
                  const Text('Actions'),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent.withOpacity(0.5),
                      // Red border with the width is equal to 5
                      border: Border.all(),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('+ Add action'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
