import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/hub/hub_failures.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybear_jinni/domain/i_hub_connection_repository.dart';
import 'package:cybear_jinni/domain/i_phone_as_hub.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/routes/app_router.gr.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class CbjHubInNetworkWidget extends StatefulWidget {
  const CbjHubInNetworkWidget({super.key});

  @override
  State<CbjHubInNetworkWidget> createState() => _CbjHubInNetworkWidgetState();
}

class _CbjHubInNetworkWidgetState extends State<CbjHubInNetworkWidget> {
  FindingHubState state = FindingHubState.loading;
  bool loading = false;
  String? ipOnTheNetwork;
  HubFailures? hubFailure;

  @override
  void initState() {
    super.initState();
    _searchHub();
  }

  Future<void> _searchHub() async {
    setState(() {
      state = FindingHubState.loading;
    });
    if (loading) {
      return;
    }

    loading = true;
    final dartz.Either<HubFailures, dartz.Unit> eitherHub =
        await IHubConnectionRepository.instance.searchForHub();
    eitherHub.fold((l) async {
      await IHubConnectionRepository.instance.closeConnection();

      final Map<String, DeviceEntityBase> devices =
          await IPhoneAsHub.instance.getAllEntities;

      if (!mounted) {
        return null;
      }
      if (devices.isNotEmpty) {
        context.router.replace(const HomeRoute());
        return;
      }
      setState(() {
        state = FindingHubState.tryIpManually;
      });
    }, (r) {
      context.router.replace(const HomeRoute());
    });
    loading = false;
  }

  Future<void> _searchHubUsingAnyIpOnTheNetwork({
    required String? ipOnTheNetwork,
  }) async {
    final dartz.Either<HubFailures, dartz.Unit> searchHub =
        await IHubConnectionRepository.instance.searchForHub(
      deviceIpOnTheNetwork: ipOnTheNetwork,
      isThatTheIpOfTheHub: true,
    );
    searchHub.fold((l) {
      setState(() {
        state = FindingHubState.loadFailure;
      });
    }, (r) {
      context.router.replace(const HomeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loading || state == FindingHubState.loading) {
      return const SizedBox(
        height: 70,
        width: 70,
        child: CircularProgressIndicatorAtom(),
      );
    }

    if (state == FindingHubState.tryIpManually) {
      String? anyIpOnTheNetwork = ipOnTheNetwork;

      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextAtom(
            "Can't find CBJ Hub in your network.\n"
            "Please retry again",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                prefixIcon: FaIcon(
                  FontAwesomeIcons.ethernet,
                  color: Colors.white,
                ),
                labelText: 'Hub IP',
                labelStyle: TextStyle(color: Colors.white),
              ),
              autocorrect: false,
              initialValue: anyIpOnTheNetwork,
              onChanged: (value) {
                anyIpOnTheNetwork = value;
              },
            ),
          ),
          TextButton(
            onPressed: () {
              if (anyIpOnTheNetwork == '') {
                showDialog(
                  context: context,
                  builder: (_) => const AlertDialog(
                    title: TextAtom(
                      'Please insert valid IP before clicking the Search Button',
                    ),
                  ),
                );
                return;
              }
              _searchHubUsingAnyIpOnTheNetwork(
                ipOnTheNetwork: anyIpOnTheNetwork,
              );
            },
            child: const TextAtom(
              'Search',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: HexColor('#734d99'),
              foregroundColor: Colors.white,
            ),
            onPressed: _searchHub,
            child: const TextAtom('Retry'),
          ),
          const SizedBox(height: 10),
        ],
      );
    }

    if (hubFailure == const HubFailures.cantFindHubInNetwork()) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextAtom(
            "Can't find a Hub in your network.",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: HexColor('#734d99'),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  _searchHub();
                },
                child: const TextAtom('Retry'),
              ),
              const SizedBox(
                width: 40,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: HexColor('#734d99'),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  ipOnTheNetwork = '';
                },
                child: const TextAtom('Retry Manually'),
              ),
            ],
          ),
        ],
      );
    } else if (hubFailure ==
        const HubFailures.automaticHubSearchNotSupportedOnWeb()) {
      return const TextAtom(
        'Automatic search does not supported on the web.',
      );
    } else if (hubFailure ==
        const HubFailures
            .findingHubWhenConnectedToEthernetCableIsNotSupported()) {
      ipOnTheNetwork = '';
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const TextAtom("Unexpected error"),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.white.withOpacity(0.8),
          ),
          onPressed: () {
            _searchHub();
          },
          child: const TextAtom('Retry'),
        ),
      ],
    );
  }
}

enum FindingHubState {
  loading,
  loadSuccessSecurityCamera,
  loadFailure,
  lightError,
  tryIpManually,
  ;
}
