import 'package:cybear_jinni/domain/vendors/lifx_login/generic_lifx_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/tuya_login/generic_tuya_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/vendor.dart';
import 'package:cybear_jinni/domain/vendors/vendor_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class IVendorsRepository {
  Future<Either<VendorFailure, KtList<Vendor>>> getVendors();

  Future<Either<CoreLoginFailure, Unit>> loginWithLifx(
    GenericLifxLoginDE genericLifxDE,
  );

  Future<Either<CoreLoginFailure, Unit>> loginWithTuya(
    GenericTuyaLoginDE genericTuyaDE,
  );
}
