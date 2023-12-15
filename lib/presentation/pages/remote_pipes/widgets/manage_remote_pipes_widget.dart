import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/remote_pipes/i_remote_pipes_repository.dart';
import 'package:cbj_integrations_controller/domain/remote_pipes/remote_pipes_entity.dart';
import 'package:cbj_integrations_controller/domain/remote_pipes/remote_pipes_value_objects.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/snack_bar_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
