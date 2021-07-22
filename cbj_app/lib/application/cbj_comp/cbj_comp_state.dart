part of 'cbj_comp_bloc.dart';

@freezed
class CBJCompState with _$CBJCompState {
  factory CBJCompState.initial() = _Initial;

  const factory CBJCompState.loadInProgress() = _LoadInProgress;

  const factory CBJCompState.loadSuccess(CBJCompEntity devices) = _LoadSuccess;

  const factory CBJCompState.loadSuccessTemp() = _LoadSuccessTemp;

  const factory CBJCompState.loadFailure(CBJCompFailure cBJCompFailure) =
      _loadFailure;

  const factory CBJCompState.error() = Error;
}
