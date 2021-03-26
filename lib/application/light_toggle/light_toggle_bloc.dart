import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/domain/devices/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/i_device_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'light_toggle_bloc.freezed.dart';
part 'light_toggle_event.dart';
part 'light_toggle_state.dart';

@injectable
class LightToggleBloc extends Bloc<LightToggleEvent, LightToggleState> {
  LightToggleBloc(this._deviceRepository) : super(LightToggleState.initial());

  final IDeviceRepository _deviceRepository;

  @override
  Stream<LightToggleState> mapEventToState(
    LightToggleEvent event,
  ) async* {
    yield* event.map(
      create: (e) async* {
        final actionResult = await _deviceRepository.create(event.deviceEntity);
      },
      changeAction: (e) async* {
        const LightToggleState.loadInProgress();

        Either<DevicesFailure, Unit> actionResult;

        if (e.forceStraightToComputer) {
          actionResult = await _deviceRepository.update(
              deviceEntity: event.deviceEntity, forceUpdateLocation: 'C');
        } else {
          actionResult =
              await _deviceRepository.update(deviceEntity: event.deviceEntity);
        }
        yield actionResult.fold(
          (devicesFailure) => LightToggleState.loadFailure(devicesFailure),
          (_) => const LightToggleState.loadSuccess(),
        );
      },
    );
  }
}
