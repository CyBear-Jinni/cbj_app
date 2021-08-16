import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_light_device/generic_light_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'hub_in_network_bloc.freezed.dart';

part 'hub_in_network_event.dart';

part 'hub_in_network_state.dart';

@injectable
class HubInNetworkBloc extends Bloc<HubInNetworkEvent, HubInNetworkState> {
  HubInNetworkBloc(this._deviceRepository) : super(HubInNetworkState.initial());

  final IDeviceRepository _deviceRepository;
  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  @override
  Stream<HubInNetworkState> mapEventToState(
    HubInNetworkEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const HubInNetworkState.loadInProgress();
        // await _deviceStreamSubscription?.cancel();
        // _deviceStreamSubscription = _deviceRepository.watchLights().listen(
        //     (eventWatch) => add(HubInNetworkEvent.devicesReceived(eventWatch)));
      },
      devicesReceived: (e) async* {
        yield const HubInNetworkState.loadInProgress();
        yield e.failureOrDevices.fold(
            (f) => HubInNetworkState.loadFailure(f),
            (d) => HubInNetworkState.loadSuccess(
                d.map((v) => v! as GenericLightDE).toMutableList()));
      },
    );
  }

  @override
  Future<void> close() async {
    await _deviceStreamSubscription?.cancel();
    return super.close();
  }
}
