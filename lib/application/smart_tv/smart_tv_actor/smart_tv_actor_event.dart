part of 'smart_tv_actor_bloc.dart';

@freezed
class SmartTvActorEvent with _$SmartTvActorEvent {
  const factory SmartTvActorEvent.initialized() = Initialized;

  const factory SmartTvActorEvent.openUrl(
    BuildContext context,
    List<String>? smartTvId,
    String url,
  ) = OpenUrl;

  const factory SmartTvActorEvent.stopEvent(
    List<String>? smartTvId,
    BuildContext context,
  ) = StopEvent;

  const factory SmartTvActorEvent.pauseEvent(
    List<String>? smartTvId,
    BuildContext context,
  ) = PauseEvent;

  const factory SmartTvActorEvent.closeEvent(
    List<String>? smartTvId,
    BuildContext context,
  ) = CloseEvent;

  const factory SmartTvActorEvent.playEvent(
    List<String>? smartTvId,
    BuildContext context,
  ) = PlayEvent;

  const factory SmartTvActorEvent.skipVideoTo(
    List<String>? smartTvId,
    BuildContext context,
  ) = SkipVideoTo;

  const factory SmartTvActorEvent.changeVolume(
    List<String>? smartTvId,
    BuildContext context,
  ) = ChangeVolume;

  const factory SmartTvActorEvent.queuePrevEvent(
    List<String>? smartTvId,
    BuildContext context,
  ) = QueuePrevEvent;

  const factory SmartTvActorEvent.queueNextEvent(
    List<String>? smartTvId,
    BuildContext context,
  ) = QueueNextEvent;
}
