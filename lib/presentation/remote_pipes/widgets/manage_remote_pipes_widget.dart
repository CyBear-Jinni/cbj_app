import 'package:cybear_jinni/application/remote_pipes/remote_pipes_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class RemotePipesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    return BlocBuilder<RemotePipesBloc, RemotePipesState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
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
                onChanged: (value) => context
                    .read<RemotePipesBloc>()
                    .add(RemotePipesEvent.remotePipesDomainChanged(value)),
                // validator: (_) => context
                //     .read<TuyaSignInFormBloc>()
                //     .state
                //     .tuyaUserName
                //     .value
                //     .fold(
                //       (CoreLoginFailure f) => 'Validation error',
                //       //   f.maybeMap(
                //       // invalidEmail: (result) => result.failedValue,
                //       // containsSpace: (result) => result.failedValue,
                //       // orElse: () => null,
                //       // ),
                //       (r) => null,
                //     ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  context.read<RemotePipesBloc>().add(
                        const RemotePipesEvent.addRemotePipeUrl(),
                      );
                },
                child: const Text('Connect'),
              ),
            ],
          ),
        );
      },
    );
  }
}
