part of 'cbj_comp_bloc.dart';

@freezed
class CBJCompEvent with _$CBJCompEvent {
  const factory CBJCompEvent.initialized() = Initialized;

  const factory CBJCompEvent.watchAllStarted() = _WatchAllStarted;

  const factory CBJCompEvent.changeAction(CBJCompEntity cBJCompEntity) =
      _ChangeState;

  const factory CBJCompEvent.compDevicesReceived(
    Either<CBJCompFailure, String> failureOrCBJCompList,
  ) = _CompDevicesReceived;

  const factory CBJCompEvent.create(CBJCompEntity cBJCompEntity) =
      _CreateDevice;
}
