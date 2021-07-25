import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/auth/auth_failure.dart';
import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes.dart';
import 'package:cybear_jinni/domain/vendors/i_vendor_repository.dart';
import 'package:cybear_jinni/domain/vendors/vendor.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'vendors_bloc.freezed.dart';
part 'vendors_event.dart';
part 'vendors_state.dart';

@injectable
class VendorsBloc extends Bloc<VendorsEvent, VendorsState> {
  VendorsBloc(this._vendorRepository) : super(VendorsState.initialized());

  final IVendorsRepository _vendorRepository;

  @override
  Stream<VendorsState> mapEventToState(
    VendorsEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        final vendorsList = await _vendorRepository.getVendors();
        yield vendorsList.fold(
          (f) => const VendorsState.error(),
          (vendorsListSuccess) => VendorsState.loaded(vendorsListSuccess),
        );
      },
    );
  }
}
