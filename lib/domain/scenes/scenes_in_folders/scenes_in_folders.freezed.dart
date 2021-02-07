// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'scenes_in_folders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ScenesInFoldersTearOff {
  const _$ScenesInFoldersTearOff();

// ignore: unused_element
  _ScenesInFolders call({@required KtList<FolderOfScene> scenesFoldersList}) {
    return _ScenesInFolders(
      scenesFoldersList: scenesFoldersList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ScenesInFolders = _$ScenesInFoldersTearOff();

/// @nodoc
mixin _$ScenesInFolders {
  KtList<FolderOfScene> get scenesFoldersList;

  @JsonKey(ignore: true)
  $ScenesInFoldersCopyWith<ScenesInFolders> get copyWith;
}

/// @nodoc
abstract class $ScenesInFoldersCopyWith<$Res> {
  factory $ScenesInFoldersCopyWith(
          ScenesInFolders value, $Res Function(ScenesInFolders) then) =
      _$ScenesInFoldersCopyWithImpl<$Res>;

  $Res call({KtList<FolderOfScene> scenesFoldersList});
}

/// @nodoc
class _$ScenesInFoldersCopyWithImpl<$Res>
    implements $ScenesInFoldersCopyWith<$Res> {
  _$ScenesInFoldersCopyWithImpl(this._value, this._then);

  final ScenesInFolders _value;
  // ignore: unused_field
  final $Res Function(ScenesInFolders) _then;

  @override
  $Res call({
    Object scenesFoldersList = freezed,
  }) {
    return _then(_value.copyWith(
      scenesFoldersList: scenesFoldersList == freezed
          ? _value.scenesFoldersList
          : scenesFoldersList as KtList<FolderOfScene>,
    ));
  }
}

/// @nodoc
abstract class _$ScenesInFoldersCopyWith<$Res>
    implements $ScenesInFoldersCopyWith<$Res> {
  factory _$ScenesInFoldersCopyWith(
          _ScenesInFolders value, $Res Function(_ScenesInFolders) then) =
      __$ScenesInFoldersCopyWithImpl<$Res>;

  @override
  $Res call({KtList<FolderOfScene> scenesFoldersList});
}

/// @nodoc
class __$ScenesInFoldersCopyWithImpl<$Res>
    extends _$ScenesInFoldersCopyWithImpl<$Res>
    implements _$ScenesInFoldersCopyWith<$Res> {
  __$ScenesInFoldersCopyWithImpl(
      _ScenesInFolders _value, $Res Function(_ScenesInFolders) _then)
      : super(_value, (v) => _then(v as _ScenesInFolders));

  @override
  _ScenesInFolders get _value => super._value as _ScenesInFolders;

  @override
  $Res call({
    Object scenesFoldersList = freezed,
  }) {
    return _then(_ScenesInFolders(
      scenesFoldersList: scenesFoldersList == freezed
          ? _value.scenesFoldersList
          : scenesFoldersList as KtList<FolderOfScene>,
    ));
  }
}

/// @nodoc
class _$_ScenesInFolders extends _ScenesInFolders {
  const _$_ScenesInFolders({@required this.scenesFoldersList})
      : assert(scenesFoldersList != null),
        super._();

  @override
  final KtList<FolderOfScene> scenesFoldersList;

  @override
  String toString() {
    return 'ScenesInFolders(scenesFoldersList: $scenesFoldersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScenesInFolders &&
            (identical(other.scenesFoldersList, scenesFoldersList) ||
                const DeepCollectionEquality()
                    .equals(other.scenesFoldersList, scenesFoldersList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(scenesFoldersList);

  @JsonKey(ignore: true)
  @override
  _$ScenesInFoldersCopyWith<_ScenesInFolders> get copyWith =>
      __$ScenesInFoldersCopyWithImpl<_ScenesInFolders>(this, _$identity);
}

abstract class _ScenesInFolders extends ScenesInFolders {
  const _ScenesInFolders._() : super._();

  const factory _ScenesInFolders(
      {@required KtList<FolderOfScene> scenesFoldersList}) = _$_ScenesInFolders;

  @override
  KtList<FolderOfScene> get scenesFoldersList;

  @override
  @JsonKey(ignore: true)
  _$ScenesInFoldersCopyWith<_ScenesInFolders> get copyWith;
}
