part of 'cbj_comp_bloc.dart';

@freezed
class CBJCompEvent with _$CBJCompEvent {
  const factory CBJCompEvent.initialized() = Initialized;

  const factory CBJCompEvent.watchAllStarted() = WatchAllStarted;

  const factory CBJCompEvent.changeAction(CBJCompEntity cBJCompEntity) =
      ChangeState;

  const factory CBJCompEvent.compDevicesReceived(
    Either<CBJCompFailure, String> failureOrCBJCompList,
  ) = CompDevicesReceived;

  const factory CBJCompEvent.create(CBJCompEntity cBJCompEntity) = CreateDevice;
}
