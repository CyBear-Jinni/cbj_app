part of 'folder_of_bindings_bloc.dart';

@freezed
class FolderOfBindingsState with _$FolderOfBindingsState {
  const factory FolderOfBindingsState({
    String? testValue,
  }) = _FolderOfBindingsState;

  factory FolderOfBindingsState.initialized() => const FolderOfBindingsState();

  // factory FolderOfBindingsState.initialized({
  //   required RoomEntity roomEntity,
  // }) = FolderOfBindingsState;

  const factory FolderOfBindingsState.loading() = Loading;

  const factory FolderOfBindingsState.loaded({
    required List<BindingCbjEntity> bindingsList,
  }) = Loaded;

  const factory FolderOfBindingsState.loadedEmptyScens() = LoadedEmptyScens;

  const factory FolderOfBindingsState.error() = Error;
}
