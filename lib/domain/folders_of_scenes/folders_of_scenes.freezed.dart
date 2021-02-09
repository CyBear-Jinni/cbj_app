// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'folders_of_scenes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FoldersOfScenesTearOff {
  const _$FoldersOfScenesTearOff();

// ignore: unused_element
  _FoldersOfScenes call(
      {@required KtList<FolderOfScenes> foldersOfScenesList}) {
    return _FoldersOfScenes(
      foldersOfScenesList: foldersOfScenesList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FoldersOfScenes = _$FoldersOfScenesTearOff();

/// @nodoc
mixin _$FoldersOfScenes {
  KtList<FolderOfScenes> get foldersOfScenesList;

  @JsonKey(ignore: true)
  $FoldersOfScenesCopyWith<FoldersOfScenes> get copyWith;
}

/// @nodoc
abstract class $FoldersOfScenesCopyWith<$Res> {
  factory $FoldersOfScenesCopyWith(
          FoldersOfScenes value, $Res Function(FoldersOfScenes) then) =
      _$FoldersOfScenesCopyWithImpl<$Res>;
  $Res call({KtList<FolderOfScenes> foldersOfScenesList});
}

/// @nodoc
class _$FoldersOfScenesCopyWithImpl<$Res>
    implements $FoldersOfScenesCopyWith<$Res> {
  _$FoldersOfScenesCopyWithImpl(this._value, this._then);

  final FoldersOfScenes _value;
  // ignore: unused_field
  final $Res Function(FoldersOfScenes) _then;

  @override
  $Res call({
    Object foldersOfScenesList = freezed,
  }) {
    return _then(_value.copyWith(
      foldersOfScenesList: foldersOfScenesList == freezed
          ? _value.foldersOfScenesList
          : foldersOfScenesList as KtList<FolderOfScenes>,
    ));
  }
}

/// @nodoc
abstract class _$FoldersOfScenesCopyWith<$Res>
    implements $FoldersOfScenesCopyWith<$Res> {
  factory _$FoldersOfScenesCopyWith(
          _FoldersOfScenes value, $Res Function(_FoldersOfScenes) then) =
      __$FoldersOfScenesCopyWithImpl<$Res>;
  @override
  $Res call({KtList<FolderOfScenes> foldersOfScenesList});
}

/// @nodoc
class __$FoldersOfScenesCopyWithImpl<$Res>
    extends _$FoldersOfScenesCopyWithImpl<$Res>
    implements _$FoldersOfScenesCopyWith<$Res> {
  __$FoldersOfScenesCopyWithImpl(
      _FoldersOfScenes _value, $Res Function(_FoldersOfScenes) _then)
      : super(_value, (v) => _then(v as _FoldersOfScenes));

  @override
  _FoldersOfScenes get _value => super._value as _FoldersOfScenes;

  @override
  $Res call({
    Object foldersOfScenesList = freezed,
  }) {
    return _then(_FoldersOfScenes(
      foldersOfScenesList: foldersOfScenesList == freezed
          ? _value.foldersOfScenesList
          : foldersOfScenesList as KtList<FolderOfScenes>,
    ));
  }
}

/// @nodoc
class _$_FoldersOfScenes extends _FoldersOfScenes {
  const _$_FoldersOfScenes({@required this.foldersOfScenesList})
      : assert(foldersOfScenesList != null),
        super._();

  @override
  final KtList<FolderOfScenes> foldersOfScenesList;

  @override
  String toString() {
    return 'FoldersOfScenes(foldersOfScenesList: $foldersOfScenesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FoldersOfScenes &&
            (identical(other.foldersOfScenesList, foldersOfScenesList) ||
                const DeepCollectionEquality()
                    .equals(other.foldersOfScenesList, foldersOfScenesList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foldersOfScenesList);

  @JsonKey(ignore: true)
  @override
  _$FoldersOfScenesCopyWith<_FoldersOfScenes> get copyWith =>
      __$FoldersOfScenesCopyWithImpl<_FoldersOfScenes>(this, _$identity);
}

abstract class _FoldersOfScenes extends FoldersOfScenes {
  const _FoldersOfScenes._() : super._();
  const factory _FoldersOfScenes(
          {@required KtList<FolderOfScenes> foldersOfScenesList}) =
      _$_FoldersOfScenes;

  @override
  KtList<FolderOfScenes> get foldersOfScenesList;
  @override
  @JsonKey(ignore: true)
  _$FoldersOfScenesCopyWith<_FoldersOfScenes> get copyWith;
}
