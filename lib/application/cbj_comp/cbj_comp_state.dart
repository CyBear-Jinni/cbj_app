part of 'cbj_comp_bloc.dart';

@freezed
abstract class CBJCompState with _$CBJCompState {
  factory CBJCompState.initial() = _Initial;

  const factory CBJCompState.loadInProgress() = _LoadInProgress;

  const factory CBJCompState.loadSuccess(KtList<CBJCompEntity> devices) =
      _LoadSuccess;

  const factory CBJCompState.loadFailure(CBJCompFailure cBJCompFailure) =
      _loadFailure;

  const factory CBJCompState.error() = Error;
}
