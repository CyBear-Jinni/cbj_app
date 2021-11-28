import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybear_jinni/domain/cbj_comp/i_cbj_comp_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cbj_comp_bloc.freezed.dart';
part 'cbj_comp_event.dart';
part 'cbj_comp_state.dart';

@injectable
class CBJCompBloc extends Bloc<CBJCompEvent, CBJCompState> {
  CBJCompBloc(this._cBJCompRepository) : super(CBJCompState.initial()) {
    on<Initialized>(_initialized);
    on<WatchAllStarted>(_watchAllStarted);
    on<ChangeState>(_changeAction);
    on<CompDevicesReceived>(_compDevicesReceived);
    on<CreateDevice>(_create);
  }

  final ICBJCompRepository _cBJCompRepository;

  StreamSubscription<Either<CBJCompFailure, String>>?
      _CBJCompStreamSubscription;

  Future<void> _initialized(
    Initialized event,
    Emitter<CBJCompState> emit,
  ) async {}

  Future<void> _create(
    CreateDevice event,
    Emitter<CBJCompState> emit,
  ) async {}

  Future<void> _watchAllStarted(
    WatchAllStarted event,
    Emitter<CBJCompState> emit,
  ) async {
    emit(const CBJCompState.loadInProgress());
    await _CBJCompStreamSubscription?.cancel();
    _CBJCompStreamSubscription = _cBJCompRepository
        .getConnectedComputersIP()
        .listen((failureOrCBJCompList) {
      final dynamic failureOrCompListDynamic = failureOrCBJCompList.fold(
        (f) => f,
        (ip) => ip,
      );

      if (failureOrCompListDynamic == CBJCompFailure) {
        emit(
          CBJCompState.loadFailure(
            failureOrCompListDynamic as CBJCompFailure,
          ),
        );
      } else {
        //TODO: Call close app server function if Security Bear ip got found
        add(CBJCompEvent.compDevicesReceived(failureOrCBJCompList));
      }
    });
  }

  Future<void> _compDevicesReceived(
    CompDevicesReceived event,
    Emitter<CBJCompState> emit,
  ) async {
    emit(const CBJCompState.loadInProgress());

    final dynamic failureOrCompListDynamic = event.failureOrCBJCompList.fold(
      (f) => f,
      (ip) => ip,
    );

    if (failureOrCompListDynamic == CBJCompFailure) {
      emit(
        CBJCompState.loadFailure(
          failureOrCompListDynamic as CBJCompFailure,
        ),
      );
    } else {
      final String ipAsString = failureOrCompListDynamic as String;
      emit(CBJCompState.loadSuccess(ipAsString));
    }
  }

  Future<void> _changeAction(
    ChangeState event,
    Emitter<CBJCompState> emit,
  ) async {
    final actionResult =
        await _cBJCompRepository.updateCompInfo(event.cBJCompEntity);

    emit(
      actionResult.fold(
        (f) => CBJCompState.loadFailure(f),
        (r) => const CBJCompState.loadSuccessTemp(),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _CBJCompStreamSubscription?.cancel();
    await _cBJCompRepository.shutdownServer();
    return super.close();
  }
}
