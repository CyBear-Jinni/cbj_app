import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_light_device/generic_light_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'blinds_actor_bloc.freezed.dart';
part 'blinds_actor_event.dart';
part 'blinds_actor_state.dart';

@injectable
class BlindsActorBloc extends Bloc<BlindsActorEvent, BlindsActorState> {
  BlindsActorBloc(this._deviceRepository)
      : super(const BlindsActorState.initial());

  final IDeviceRepository _deviceRepository;

  @override
  Stream<BlindsActorState> mapEventToState(
    BlindsActorEvent event,
  ) async* {
    yield* event.map(
      deleted: (e) async* {},
      initialized: (e) async* {},
      moveUpAllBlinds: (_MoveUpAllBlinds value) async* {
        FlushbarHelper.createLoading(
          message: 'Pulling Up all blinds',
          linearProgressIndicator: const LinearProgressIndicator(),
        ).show(value.context);

        _deviceRepository.moveUpBlinds(devicesId: value.blindsIdToTurnUp);
      },
      stopAllBlinds: (_StopAllBlinds value) async* {
        FlushbarHelper.createLoading(
          message: 'Stopping all blinds',
          linearProgressIndicator: const LinearProgressIndicator(),
        ).show(value.context);

        _deviceRepository.stopBlinds(devicesId: value.blindsIdToStop);
      },
      moveDownAllBlinds: (_MoveDownAllBlinds value) async* {
        FlushbarHelper.createLoading(
          message: 'Pulling down all blinds',
          linearProgressIndicator: const LinearProgressIndicator(),
        ).show(value.context);

        _deviceRepository.moveDownBlinds(devicesId: value.blindsIdToTurnDown);
      },
    );
  }
}
