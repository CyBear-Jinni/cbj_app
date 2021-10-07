import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/vendor.dart';
import 'package:cybear_jinni/domain/vendors/vendor_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'lifx_login/generic_lifx_entity.dart';

abstract class IVendorsRepository {
  Future<Either<VendorFailure, KtList<Vendor>>> getVendors();

  Future<Either<CoreLoginValueFailure, KtList<Vendor>>> loginWithLifx(
    GenericLifxDE genericLifxDE,
  );
}
