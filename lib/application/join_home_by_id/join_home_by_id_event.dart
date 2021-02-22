part of 'join_home_by_id_bloc.dart';

@freezed
abstract class JoinHomeByIdEvent with _$JoinHomeByIdEvent {
  const factory JoinHomeByIdEvent.initialized() = Initialized;
  const factory JoinHomeByIdEvent.addHomeById(String id) = AddHomeById;
}
