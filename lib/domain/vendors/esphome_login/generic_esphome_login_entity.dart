import 'package:cybear_jinni/domain/vendors/esphome_login/generic_esphome_login_value_objects.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/login_entity_abstract.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';

import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_esphome_login/generic_esphome_login_dtos.dart';
import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_login_abstract/login_entity_dto_abstract.dart';
import 'package:dartz/dartz.dart';

/// Abstract smart GenericEspHome that exist inside a computer, the
/// implementations will be actual GenericEspHome like blinds esphomes and more
class GenericEspHomeLoginDE extends LoginEntityAbstract {
  /// All public field of GenericEspHome entity
  GenericEspHomeLoginDE({
    required super.senderUniqueId,
    required this.espHomeDevicePass,
  }) : super(
          loginVendor: CoreLoginVendor(VendorsAndServices.espHome.name),
        );

  /// Empty instance of GenericEspHomeEntity
  factory GenericEspHomeLoginDE.empty() => GenericEspHomeLoginDE(
        senderUniqueId: CoreLoginSenderId.fromUniqueString(''),
        espHomeDevicePass: GenericEspHomeDeviceLoginApiPass(''),
      );

  /// EspHome api key
  GenericEspHomeDeviceLoginApiPass espHomeDevicePass;

  Option<CoreLoginFailure<dynamic>> get failureOption =>
      senderUniqueId.value.fold((f) => some(f), (_) => none());

  //
  // /// Will return failure if any of the fields failed or return unit if fields
  // /// have legit values
  // Option<CoreFailure<dynamic>> get failureOption {
  //   return cbjEntityName!.value.fold((f) => some(f), (_) => none());
  //
  // return body.failureOrUnit
  //     .andThen(todos.failureOrUnit)
  //     .andThen(
  //       todos
  //           .getOrCrash()
  //           // Getting the failureOption from the TodoItem ENTITY - NOT a failureOrUnit from a VALUE OBJECT
  //           .map((todoItem) => todoItem.failureOption)
  //           .filter((o) => o.isSome())
  //           // If we can't get the 0th element, the list is empty. In such a case, it's valid.
  //           .getOrElse(0, (_) => none())
  //           .fold(() => right(unit), (f) => left(f)),
  //     )
  //     .fold((f) => some(f), (_) => none());
  // }

  @override
  LoginEntityDtoAbstract toInfrastructure() {
    return GenericEspHomeLoginDtos(
      senderUniqueId: senderUniqueId.getOrCrash(),
      loginVendor: loginVendor.getOrCrash(),
      esphomeDevicePass: espHomeDevicePass.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }
}
