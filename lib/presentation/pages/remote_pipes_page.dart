import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/remote_pipes/i_remote_pipes_repository.dart';
import 'package:cbj_integrations_controller/domain/remote_pipes/remote_pipes_entity.dart';
import 'package:cbj_integrations_controller/domain/remote_pipes/remote_pipes_value_objects.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/snack_bar_service.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class RemotePipesPage extends StatelessWidget {
  /// Execute when remote pipes press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const TextAtom(
            '➕ Add remote pipes',
            style: TextStyle(color: Colors.green, fontSize: 23),
          ),
          onPressed: (_) {
            // context.router.push(const AddUserToHomeRoute());
          },
        ),
      ],
    );
  }

  void leftIconFunction(BuildContext context) {
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBarMolecule(
            pageName: 'Remote Pipes',
            rightIconFunction: userCogFunction,
            leftIcon: FontAwesomeIcons.arrowLeft,
            leftIconFunction: leftIconFunction,
          ),
          Expanded(
            child: RemotePipesWidget(),
          ),
        ],
      ),
    );
  }
}

/// Show light toggles in a container with the background color from smart room
/// object
class RemotePipesWidget extends StatefulWidget {
  @override
  State<RemotePipesWidget> createState() => _RemotePipesWidgetState();
}

class _RemotePipesWidgetState extends State<RemotePipesWidget> {
  String? remotePipesDomainName;

  Future<void> _remotePipesDomainChanged(String value) async {
    setState(() {
      remotePipesDomainName = value;
    });
  }

  Future<void> _addRemotePipeUrl() async {
    if (remotePipesDomainName == null || remotePipesDomainName!.isEmpty) {
      return;
    }

    final RemotePipesEntity remotePipesEntity =
        RemotePipesEntity.empty().copyWith(
      domainName: RemotePipesDomain(remotePipesDomainName!),
    );

    context.router.pop();
    await IRemotePipesRepository.instance
        .setRemotePipesDomainName(remotePipesEntity);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextAtom(
            'Please insert the Remote Pipes domain',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          const SizedBox(
            height: 60,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: FaIcon(FontAwesomeIcons.globe),
              labelText: 'Remote Pipes domain',
            ),
            autocorrect: false,
            onChanged: _remotePipesDomainChanged,
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              SnackBarService().show(
                context,
                'Sending domain name to the Hub',
              );
              _addRemotePipeUrl();
            },
            child: const TextAtom('Connect'),
          ),
        ],
      ),
    );
  }
}
