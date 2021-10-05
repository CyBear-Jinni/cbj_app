import 'package:cybear_jinni/domain/vendors_login/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors_login/login_abstract/login_entity_abstract.dart';
import 'package:cybear_jinni/domain/vendors_login/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_lifx_login/generic_lifx_login_dtos.dart';
import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_login_abstract/login_entity_dto_abstract.dart';
import 'package:dartz/dartz.dart';

/// Abstract smart GenericLifx that exist inside a computer, the
/// implementations will be actual GenericLifx like blinds lifxs and more
class GenericLifxDE extends LoginEntityAbstract {
  /// All public field of GenericLifx entity
  GenericLifxDE({
    required CoreLoginSenderId senderUniqueId,
    required CoreLoginVendor loginVendor,
  }) : super(senderUniqueId: senderUniqueId, loginVendor: loginVendor);

  // /// State of the lifx on/off
  // GenericLifxSwitchState? lifxSwitchState;

  /// Empty instance of GenericLifxEntity
  factory GenericLifxDE.empty() => GenericLifxDE(
        senderUniqueId: CoreLoginSenderId.fromUniqueString(''),
        loginVendor: CoreLoginVendor(''),
      );

  Option<CoreLoginFailure<dynamic>> get failureOption =>
      senderUniqueId.value.fold((f) => some(f), (_) => none());

  //
  // /// Will return failure if any of the fields failed or return unit if fields
  // /// have legit values
  // Option<CoreFailure<dynamic>> get failureOption {
  //   return defaultName!.value.fold((f) => some(f), (_) => none());
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
    return GenericLifxLoginDtos(
      senderUniqueId: senderUniqueId.getOrCrash(),
      loginVendor: loginVendor.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }
}
