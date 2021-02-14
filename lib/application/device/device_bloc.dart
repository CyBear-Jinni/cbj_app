import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'device_event.dart';

part 'device_state.dart';

class DeviceBloc extends Bloc<DeviceEvent, DeviceState> {
  DeviceBloc() : super(DeviceInitial());

  @override
  Stream<DeviceState> mapEventToState(
    DeviceEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
