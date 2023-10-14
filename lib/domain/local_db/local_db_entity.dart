//
// import 'package:dartz/dartz.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'local_db_entity.freezed.dart';
//
// @freezed
// abstract class LocalDbEntity2 implements _$LocalDbEntity2 {
//   const factory LocalDbEntity2({
//     required LocalDbUniqueId2? id,
//     required LocalDbEmail? email,
//     required LocalDbName2? name,
//     LocalDbPass2? pass,
//     LocalDbFirstName2? firstName,
//     LocalDbLastName2? lastName,
//   }) = _LocalDbEntity2;
//
//   const LocalDbEntity2._();
//
//   factory LocalDbEntity2.empty() => LocalDbEntity2(
//         id: LocalDbUniqueId2(),
//         email: LocalDbEmail2(''),
//         name: LocalDbName2(''),
//       );
//
//   Option<LocalDbFailures2<dynamic>> get failureOption {
//     return email!.value.fold((f) => some(f), (_) => none());
//   }
// }
