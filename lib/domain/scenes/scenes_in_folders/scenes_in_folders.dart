import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'scenes_in_folders.freezed.dart';

@freezed
abstract class ScenesInFolders with _$ScenesInFolders {
  const factory ScenesInFolders({
    @required KtList<String> list,
  }) = _ScenesInFolders;
}
