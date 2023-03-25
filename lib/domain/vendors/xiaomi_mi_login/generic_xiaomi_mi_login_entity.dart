import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/login_entity_abstract.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/domain/vendors/xiaomi_mi_login/generic_xiaomi_mi_login_value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_login_abstract/login_entity_dto_abstract.dart';
import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_xiaomi_mi_login/generic_xiaomi_mi_login_dtos.dart';
import 'package:dartz/dartz.dart';

/// Abstract smart GenericXiaomiMi that exist inside a computer, the
/// implementations will be actual GenericXiaomiMi like blinds xiaomiMis and more
class GenericXiaomiMiLoginDE extends LoginEntityAbstract {
  /// All public field of GenericXiaomiMi entity
  GenericXiaomiMiLoginDE({
    required super.senderUniqueId,
    required this.xiaomiMiDevicePass,
  }) : super(
          loginVendor: CoreLoginVendor(VendorsAndServices.xiaomiMi.name),
        );

  /// Empty instance of GenericXiaomiMiEntity
  factory GenericXiaomiMiLoginDE.empty() => GenericXiaomiMiLoginDE(
        senderUniqueId: CoreLoginSenderId.fromUniqueString(''),
        xiaomiMiDevicePass: GenericXiaomiMiDeviceLoginApiPass(''),
      );

  /// XiaomiMi api key
  GenericXiaomiMiDeviceLoginApiPass xiaomiMiDevicePass;

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
    return GenericXiaomiMiLoginDtos(
      senderUniqueId: senderUniqueId.getOrCrash(),
      loginVendor: loginVendor.getOrCrash(),
      xiaomiMiDevicePass: xiaomiMiDevicePass.getOrCrash(),
    );
  }
}
