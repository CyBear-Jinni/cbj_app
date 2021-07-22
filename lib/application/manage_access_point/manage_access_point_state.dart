part of 'manage_access_point_bloc.dart';

@freezed
class ManageAccessPointState with _$ManageAccessPointState {
  factory ManageAccessPointState.initial() = Initial;

  factory ManageAccessPointState.loading() = Loading;

  factory ManageAccessPointState.loaded() = Loaded;

  factory ManageAccessPointState.iOSDevice() = IOSDevice;

  factory ManageAccessPointState.cantDetermineAccessPointOpenOrNot() =
      CantDetermineAccessPointOpenOrNot;

  factory ManageAccessPointState.accessPointIsNotOpen() = AccessPointIsNotOpen;

  factory ManageAccessPointState.accessPointIsOpen() = AccessPointIsOpen;

  factory ManageAccessPointState.error() = Error;
}
