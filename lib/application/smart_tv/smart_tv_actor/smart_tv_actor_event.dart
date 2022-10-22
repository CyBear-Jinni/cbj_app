part of 'smart_tv_actor_bloc.dart';

@freezed
class SmartTvActorEvent with _$SmartTvActorEvent {
  const factory SmartTvActorEvent.initialized() = Initialized;

  const factory SmartTvActorEvent.openUrl(
    BuildContext context,
    List<String>? smartTvId,
    String url,
  ) = OpenUrl;

  const factory SmartTvActorEvent.pausePlayState(
    List<String>? smartTvId,
    BuildContext context,
  ) = PausePlayState;

  const factory SmartTvActorEvent.skipVideoTo(
    List<String>? smartTvId,
    BuildContext context,
  ) = SkipVideoTo;

  const factory SmartTvActorEvent.changeVolume(
    List<String>? smartTvId,
    BuildContext context,
  ) = ChangeVolume;
}
