import 'package:cybear_jinni/domain/remote_pipes/remote_pipes_entity.dart';
import 'package:cybear_jinni/domain/remote_pipes/remote_pipes_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_pipes_dtos.freezed.dart';
part 'remote_pipes_dtos.g.dart';

@freezed
abstract class RemotePipesDtos implements _$RemotePipesDtos {
  factory RemotePipesDtos({
    // @JsonKey(ignore: true)
    required String domainName,
    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _RemotePipesDtos;

  RemotePipesDtos._();

  @override
  final String deviceDtoClassInstance = (RemotePipesDtos).toString();

  factory RemotePipesDtos.fromDomain(RemotePipesEntity remotePipesDE) {
    return RemotePipesDtos(
      domainName: remotePipesDE.domainName!.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory RemotePipesDtos.fromJson(Map<String, dynamic> json) =>
      _$RemotePipesDtosFromJson(json);

  RemotePipesEntity toDomain() {
    return RemotePipesEntity(
      domainName: RemotePipesDomain(domainName),
    );
  }
}

// class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
//   const ServerTimestampConverter();
//
//   @override
//   FieldValue fromJson(Object json) {
//     return FieldValue.serverTimestamp();
//   }
//
//   @override
//   Object toJson(FieldValue fieldValue) => fieldValue;
// }
