import 'dart:collection';

import 'package:cybear_jinni/domain/binding/binding_cbj_entity.dart';
import 'package:cybear_jinni/domain/binding/binding_cbj_failures.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

abstract class IBindingCbjRepository {
  Future<Either<BindingCbjFailure, KtList<BindingCbjEntity>>>
      getAllBindingsAsList();

  Future<Either<BindingCbjFailure, HashMap<String, BindingCbjEntity>>>
      getAllBindingsAsMap();

  Stream<Either<BindingCbjFailure, KtList<BindingCbjEntity>>>
      watchAllBindings();

  /// Sending the new binding to the hub to get added
  Future<Either<BindingCbjFailure, BindingCbjEntity>>
      addOrUpdateNewBindingInHub(
    BindingCbjEntity bindingCbjEntity,
  );

  /// Activate action of all binding list
  Future<Either<BindingCbjFailure, Unit>> activateBindings(
    KtList<BindingCbjEntity> bindingsList,
  );

  Future<Either<BindingCbjFailure, BindingCbjEntity>> getBinding();

  /// Sending the new binding to the hub to get added
  Future<Either<BindingCbjFailure, BindingCbjEntity>>
      addOrUpdateNewBindingInHubFromDevicesPropertyActionList(
    String bindingName,
    List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        smartDevicesWithActionToAdd,
  );

  /// Sending the new binding from the hub to the app binding list
  void addOrUpdateNewBindingInApp(
    BindingCbjEntity bindingCbj,
  );

  Future<void> initiateHubConnection();

  BehaviorSubject<KtList<BindingCbjEntity>>
      bindingsResponseFromTheHubStreamController =
      BehaviorSubject<KtList<BindingCbjEntity>>();
}
