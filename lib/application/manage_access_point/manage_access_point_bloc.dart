import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/manage_network/i_manage_network_repository.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_entity.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'manage_access_point_bloc.freezed.dart';
part 'manage_access_point_event.dart';
part 'manage_access_point_state.dart';

@injectable
class ManageAccessPointBloc
    extends Bloc<ManageAccessPointEvent, ManageAccessPointState> {
  ManageAccessPointBloc(this._manageAccessPointRepository)
      : super(ManageAccessPointState.initial());

  final IManageNetworkRepository _manageAccessPointRepository;

  ManageWiFiName? wifiName;
  ManageWiFiPass? wifiPassword;

  @override
  Stream<ManageAccessPointState> mapEventToState(
    ManageAccessPointEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield ManageAccessPointState.loading();

        if (Platform.isAndroid) {
          final ManageNetworkEntity manageNetworkEntity = ManageNetworkEntity(
              name: ManageWiFiName('CyBear Jinni'),
              pass: ManageWiFiPass('CyBear Jinni'));

          final Either<HomeUserFailures, Unit> opendAccessPoint =
              await _manageAccessPointRepository!
                  .openAccessPoint(manageNetworkEntity);

          yield opendAccessPoint.fold((f) => ManageAccessPointState.iOSDevice(),
              (r) => ManageAccessPointState.loaded());
        } else {
          yield ManageAccessPointState.iOSDevice();
        }
      },
      doesAccessPointOpen: (e) async* {
        yield ManageAccessPointState.loading();

        if (Platform.isAndroid) {
          final Either<HomeUserFailures, Unit> openedAccessPoint =
              await _manageAccessPointRepository!.doesAccessPointOpen();

          yield openedAccessPoint.fold(
            (HomeUserFailures f) {
              if (f == const HomeUserFailures.accessPointIsNotOpen()) {
                return ManageAccessPointState.accessPointIsNotOpen();
              }
              return ManageAccessPointState.cantDetermineAccessPointOpenOrNot();
            },
            (r) => ManageAccessPointState.accessPointIsOpen(),
          );
        } else {
          yield ManageAccessPointState.cantDetermineAccessPointOpenOrNot();
        }
      },
    );
  }
}
