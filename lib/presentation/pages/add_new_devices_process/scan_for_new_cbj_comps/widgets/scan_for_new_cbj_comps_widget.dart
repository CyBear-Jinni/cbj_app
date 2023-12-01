import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_value_objects.dart';
import 'package:cybear_jinni/domain/cbj_comp/i_cbj_comp_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class ScanForNewCBJCompsWidget extends StatefulWidget {
  @override
  State<ScanForNewCBJCompsWidget> createState() =>
      _ScanForNewCBJCompsWidgetState();
}

class _ScanForNewCBJCompsWidgetState extends State<ScanForNewCBJCompsWidget> {
  StreamSubscription<dartz.Either<CBJCompFailure, String>>?
      _cbjCompStreamSubscription;

  @override
  void initState() {
    super.initState();
    _watchAllStarted();
  }

  Future<void> _watchAllStarted() async {
    await _cbjCompStreamSubscription?.cancel();
    _cbjCompStreamSubscription = ICBJCompRepository.instance
        .getConnectedComputersIP()
        .listen((failureOrCBJCompList) {
      final dynamic failureOrCompListDynamic = failureOrCBJCompList.fold(
        (f) => f,
        (ip) => ip,
      );

      if (failureOrCompListDynamic == CBJCompFailure) {
      } else {
        _compDevicesReceived(failureOrCBJCompList);
      }
    });
  }

  Future<void> _compDevicesReceived(
    dartz.Either<CBJCompFailure, String> failureOrCBJCompList,
  ) async {
    final dynamic failureOrCompListDynamic = failureOrCBJCompList.fold(
      (f) => f,
      (ip) => ip,
    );

    if (failureOrCompListDynamic == CBJCompFailure) {
    } else {
      final String ipAsString = failureOrCompListDynamic as String;
      routeToConfigure(ipAsString);
    }
  }

  void routeToConfigure(String ipAsString) {
    final CBJCompEntity compEntity = CBJCompEntity.empty().copyWith(
      lastKnownIp: CBJCompLastKnownIp(ipAsString),
    );

    context.router.replace(
      ConfigureNewCbjCompRoute(cbjCompEntity: compEntity),
    );
  }

  @override
  Future<void> dispose() async {
    await _cbjCompStreamSubscription?.cancel();
    await ICBJCompRepository.instance.shutdownServer();
    return super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        TextAtom(
          'Scanning For Devices',
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyLarge!.color,
            fontSize: 26,
          ),
        ),
        const Expanded(
          child: Center(
            child: CircularProgressIndicatorAtom(),
          ),
        ),
      ],
    );
  }
}
