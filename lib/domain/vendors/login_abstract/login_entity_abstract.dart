import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_login_abstract/login_entity_dto_abstract.dart';

abstract class LoginEntityAbstract {
  LoginEntityAbstract({
    required this.senderUniqueId,
    required this.loginVendor,
  });

  /// The user id who want to login
  CoreLoginSenderId senderUniqueId;

  /// The smart GenericLight type
  CoreLoginVendor loginVendor;

  // /// Copy with login state to waiting or ack
  // LoginEntityAbstract copyWithLoginState(LoginStateGRPC loginStateGRPC) {
  //   return this;
  // }
  //
  // /// Copy with login action
  // LoginEntityAbstract copyWithLoginAction(LoginActions loginActions) {
  //   return this;
  // }

  /// Copy with stateMassage
  LoginEntityAbstract copyWithStateMassage(String stateMassage) {
    return this;
  }

  /// Copy with senderLoginOs
  LoginEntityAbstract copyWithSenderLoginOs(String senderLoginOs) {
    return this;
  }

  /// Copy with loginSenderLoginModel
  LoginEntityAbstract copyWithLoginSenderLoginModel(
    String loginSenderLoginModel,
  ) {
    return this;
  }

  /// Copy with currentUserId
  LoginEntityAbstract copyWithSenderId(String userId) {
    return this;
  }

  LoginEntityDtoAbstract toInfrastructure() {
    return LoginEntityDtoAbstract();
  }

// /// The default name of the login
// LoginDefaultName? defaultName;
}

class LoginEntityEmpty extends LoginEntityAbstract {
  LoginEntityEmpty()
      : super(
          senderUniqueId: CoreLoginSenderId(),
          loginVendor: CoreLoginVendor(
              VendorsAndServices.vendorsAndServicesNotSupported.toString()),
        );
}

//
// part 'login_entity_abstract.freezed.dart';
//
// /// Abstract smart login that exist inside a computer, the implementations will
// /// be actual login like blinds lights and more
// @freezed
// abstract class LoginEntityAbstract implements _$LoginEntityAbstract {
//   /// All public field of login entity
//   const factory LoginEntityAbstract({
//     /// The smart login id
//     required LoginUniqueId? id,
//
//     /// The default name of the login
//     required LoginDefaultName? defaultName,
//   }) = _LoginEntityAbstract;
//
//   const LoginEntityAbstract._();
//
//   /// Empty instance of GenericLightDE
//   factory LoginEntityAbstract.empty() => LoginEntityAbstract(
//         id: LoginUniqueId(),
//         defaultName: LoginDefaultName(''),
//       );
//
//   /// Will return failure if any of the fields failed or return unit if fields
//   /// have legit values
//   Option<LoginsFailure<dynamic>> get failureOption {
//     return defaultName!.value.fold((f) => some(f), (_) => none());
//     //
//     // return body.failureOrUnit
//     //     .andThen(todos.failureOrUnit)
//     //     .andThen(
//     //       todos
//     //           .getOrCrash()
//     //           // Getting the failureOption from the TodoItem ENTITY - NOT a failureOrUnit from a VALUE OBJECT
//     //           .map((todoItem) => todoItem.failureOption)
//     //           .filter((o) => o.isSome())
//     //           // If we can't get the 0th element, the list is empty. In such a case, it's valid.
//     //           .getOrElse(0, (_) => none())
//     //           .fold(() => right(unit), (f) => left(f)),
//     //     )
//     //     .fold((f) => some(f), (_) => none());
//   }
// }
