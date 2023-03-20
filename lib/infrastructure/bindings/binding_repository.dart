import 'dart:collection';
import 'dart:convert';

import 'package:cybear_jinni/domain/binding/binding_cbj_entity.dart';
import 'package:cybear_jinni/domain/binding/binding_cbj_failures.dart';
import 'package:cybear_jinni/domain/binding/i_binding_cbj_repository.dart';
import 'package:cybear_jinni/domain/binding/value_objects_routine_cbj.dart';
import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_client.dart';
import 'package:cybear_jinni/infrastructure/node_red/node_red_converter.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/src/subjects/behavior_subject.dart';

@LazySingleton(as: IBindingCbjRepository)
class BindingCbjRepository implements IBindingCbjRepository {
  HashMap<String, BindingCbjEntity> allBindings =
      HashMap<String, BindingCbjEntity>();

  @override
  Future<Either<BindingCbjFailure, BindingCbjEntity>> getBinding() async {
    //
    // final BindingCbj binding = BindingCbj(
    //   uniqueId: UniqueId(),
    //   name: 'Turn on all lights out side',
    //   bindingsActionsToExecute: [
    //     'Turn on all lights',
    //     ' Turn on all lights',
    //   ].toImmutableList(),
    // );
    //
    //
    // final KtList<String> bindingsActionsList = [
    //   'Gut Calling',
    //   'Out Side North',
    // ].toImmutableList();

    try {
      return right(
        BindingCbjEntity(
          uniqueId: UniqueId(),
          name: BindingCbjName('Go to sleep ----------- 😴'),
          backgroundColor:
              BindingCbjBackgroundColor(Colors.blue.value.toString()),
          iconCodePoint: BindingCbjIconCodePoint(
            FontAwesomeIcons.school.codePoint.toString(),
          ),
          image: BindingCbjBackgroundImage(null),
          automationString: BindingCbjAutomationString(null),
          nodeRedFlowId: BindingCbjNodeRedFlowId(null),
          firstNodeId: BindingCbjFirstNodeId(null),
          lastDateOfExecute: BindingCbjLastDateOfExecute(null),
          entityStateGRPC: BindingCbjDeviceStateGRPC(null),
          senderDeviceModel: BindingCbjSenderDeviceModel(null),
          senderDeviceOs: BindingCbjSenderDeviceOs(null),
          senderId: BindingCbjSenderId(null),
          compUuid: BindingCbjCompUuid(null),
          stateMassage: BindingCbjStateMassage(null),
        ),
      );
    } catch (e) {
      return left(const BindingCbjFailure.unexpected());
    }
  }

  @override
  Future<Either<BindingCbjFailure, BindingCbjEntity>>
      addOrUpdateNewBindingInHub(
    BindingCbjEntity bindingCbjEntity,
  ) async {
    allBindings[bindingCbjEntity.uniqueId.getOrCrash()] = bindingCbjEntity;

    final ClientStatusRequests clientStatusRequests = ClientStatusRequests(
      allRemoteCommands:
          jsonEncode(bindingCbjEntity.toInfrastructure().toJson()),
      sendingType: SendingType.bindingsType,
    );
    AppRequestsToHub.appRequestsToHubStreamController.add(clientStatusRequests);

    return right(bindingCbjEntity);
  }

  @override
  Future<Either<BindingCbjFailure, BindingCbjEntity>>
      addOrUpdateNewBindingInHubFromDevicesPropertyActionList(
    String bindingName,
    List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        smartDevicesWithActionToAdd,
  ) async {
    final BindingCbjEntity newCbjBinding =
        NodeRedConverter.convertToBindingNodes(
      nodeName: bindingName,
      devicesPropertyAction: smartDevicesWithActionToAdd,
    );
    return addOrUpdateNewBindingInHub(newCbjBinding);
  }

  @override
  Future<Either<BindingCbjFailure, KtList<BindingCbjEntity>>>
      getAllBindingsAsList() async {
    try {
      return right(allBindings.values.toImmutableList());
    } catch (e) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        logger.w('Insufficient permission while getting all bindings list');
        return left(const BindingCbjFailure.unexpected());
      } else {
        logger.e('Unexpected error while getting all bindings list');
        // log.error(e.toString());
        return left(const BindingCbjFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<BindingCbjFailure, HashMap<String, BindingCbjEntity>>>
      getAllBindingsAsMap() async {
    try {
      return right(allBindings);
    } catch (e) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        logger.w('Insufficient permission while getting all bindings map');
        return left(const BindingCbjFailure.unexpected());
      } else {
        logger.e('Unexpected error while getting all bindings map');
        // log.error(e.toString());
        return left(const BindingCbjFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<BindingCbjFailure, Unit>> activateBindings(
    KtList<BindingCbjEntity> bindingsList,
  ) async {
    for (final BindingCbjEntity bindingCbjEntity in bindingsList.asList()) {
      addOrUpdateNewBindingInHub(
        bindingCbjEntity.copyWith(
          entityStateGRPC: BindingCbjDeviceStateGRPC(
            DeviceStateGRPC.waitingInFirebase.toString(),
          ),
        ),
      );
    }
    return right(unit);
  }

  @override
  void addOrUpdateNewBindingInApp(BindingCbjEntity bindingCbj) {
    allBindings[bindingCbj.uniqueId.getOrCrash()] = bindingCbj;

    bindingsResponseFromTheHubStreamController.sink
        .add(allBindings.values.toImmutableList());
  }

  @override
  Future<void> initiateHubConnection() async {}

  @override
  Stream<Either<BindingCbjFailure, KtList<BindingCbjEntity>>>
      watchAllBindings() async* {
    yield* bindingsResponseFromTheHubStreamController.stream
        .map((event) => right(event));
  }

  @override
  BehaviorSubject<KtList<BindingCbjEntity>>
      bindingsResponseFromTheHubStreamController =
      BehaviorSubject<KtList<BindingCbjEntity>>();
}
