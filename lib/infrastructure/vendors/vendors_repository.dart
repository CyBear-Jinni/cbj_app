import 'package:cybear_jinni/domain/vendors/esphome_login/generic_esphome_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/i_vendor_repository.dart';
import 'package:cybear_jinni/domain/vendors/lifx_login/generic_lifx_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/login_entity_abstract.dart';
import 'package:cybear_jinni/domain/vendors/tuya_login/generic_tuya_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/vendor.dart';
import 'package:cybear_jinni/domain/vendors/vendor_failures.dart';
import 'package:cybear_jinni/domain/vendors/vendor_value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_client.dart';
import 'package:cybear_jinni/infrastructure/vendors/vendor_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton(as: IVendorsRepository)
class VendorsRepository implements IVendorsRepository {
  @override
  Future<Either<VendorFailure, KtList<Vendor>>> getVendors() async {
    final List<Vendor> vendorsWithIcons = [];

    // Add icons to supported vendors and services
    for (final VendorsAndServices vendorsAndServices
        in VendorsAndServices.values) {
      final String vendorName = vendorsAndServices.name;
      if (vendorName ==
              VendorsAndServices.vendorsAndServicesNotSupported.name ||
          vendorName == VendorsAndServices.miHome.name ||
          vendorName == VendorsAndServices.sonoffDiy.name ||
          vendorName == VendorsAndServices.sonoffEweLink.name ||
          vendorName == VendorsAndServices.ikea.name ||
          vendorName == VendorsAndServices.wink.name ||
          vendorName == VendorsAndServices.lg.name ||
          vendorName == VendorsAndServices.spotify.name ||
          vendorName == VendorsAndServices.homeAssistant.name ||
          vendorName == VendorsAndServices.yeelink.name ||
          vendorName == VendorsAndServices.xiaomi.name ||
          vendorName == VendorsAndServices.wiz.name ||
          vendorName == VendorsAndServices.switchBot.name ||
          vendorName == VendorsAndServices.somfy.name ||
          vendorName == VendorsAndServices.tuyaSmart.name ||
          vendorName == VendorsAndServices.smartLife.name ||
          vendorName == VendorsAndServices.jinvooSmart.name) {
        continue;
      }
      Vendor v = vendorPlusImageFromVandorName(vendorName);
      if (vendorName == VendorsAndServices.switcherSmartHome.name) {
        v = v.copyWith(name: VendorName('Switcher'));
      }
      vendorsWithIcons.add(v);
    }
    return right(vendorsWithIcons.toImmutableList());
  }

  Vendor vendorPlusImageFromVandorName(String vendorName) {
    final String vendorNameNoCapsOrSpaceOrUnderscore =
        vendorName.toLowerCase().replaceAll(' ', '').replaceAll('_', '');

    for (final Vendor vendor
        in VendorsMocDataWithImages().getAllVendors().asList()) {
      final String vendorNameNoLowerCaseOrSpaceOrUnderscore = vendor.name
          .getOrCrash()
          .toLowerCase()
          .replaceAll(' ', '')
          .replaceAll('_', '');

      if (vendorNameNoLowerCaseOrSpaceOrUnderscore ==
          vendorNameNoCapsOrSpaceOrUnderscore) {
        return vendor;
      }
    }

    return Vendor(
      name: VendorName(vendorName),
      image:
          'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.seilevel.com%2Frequirements%2Fwp-content%2Fplugins%2Fstormhill_author_page%2Fimg%2Fimage-not-found.png&f=1&nofb=1',
    );
  }

  @override
  Future<Either<CoreLoginFailure, Unit>> loginWithLifx(
    GenericLifxLoginDE genericLifxDE,
  ) async {
    return loginWithVendor(genericLifxDE);
  }

  @override
  Future<Either<CoreLoginFailure, Unit>> loginWithTuya(
    GenericTuyaLoginDE genericTuyaDE,
  ) async {
    return loginWithVendor(genericTuyaDE);
  }

  Future<Either<CoreLoginFailure, Unit>> loginWithVendor(
    LoginEntityAbstract genericVendorDE,
  ) async {
    try {
      final String loginDtoAsString =
          VendorHelper.convertDomainToJsonString(genericVendorDE);

      final ClientStatusRequests clientStatusRequests = ClientStatusRequests(
        allRemoteCommands: loginDtoAsString,
        sendingType: SendingType.vendorLoginType,
      );

      AppRequestsToHub.appRequestsToHubStreamController
          .add(clientStatusRequests);
      return right(unit);
    } catch (e) {
      return left(const CoreLoginFailure.unexpected());
    }
  }

  @override
  Future<Either<CoreLoginFailure, Unit>> loginWithEspHome(
      GenericEspHomeLoginDE genericEspHomeDE) {
    return loginWithVendor(genericEspHomeDE);
  }
}

class VendorsMocDataWithImages {
  KtList<Vendor> getAllVendors() {
    return [
      Vendor(
        name: VendorName('Tasmota'),
        image: 'https://i.ibb.co/XZLGCRd/Tasmota-logo.png',
      ),
      Vendor(
        name: VendorName('Xiaomi Mi'),
        image:
            'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.designbust.com%2Fdownload%2F1629%2Fpng%2Fxiaomi_logo512.png&f=1&nofb=1',
      ),
      Vendor(
        name: VendorName('Lifx'),
        image:
            'https://play-lh.googleusercontent.com/k61DT9oYt_BPdzjAFokLY5e-He-YSl7-eZHeieaVO45XDAwQ6ebegsS_ZsQytca2zWM=s180',
      ),
      Vendor(
        name: VendorName('SwitcherSmartHome'),
        image:
            'https://play-lh.googleusercontent.com/8L6vVAT2cC78V622nxSznr7Mm_MgMsH25TopH-ZIm5HMwAHRy0qTX29FlHF6_kbBsQ=s180',
      ),
      Vendor(
        name: VendorName('Sonoff'),
        image:
            'https://play-lh.googleusercontent.com/nfDq8xm5ueWPIZswiRD8PxzjmFAmOBgByV1CpFfAhau1_D_XCP2jW0EZ3VMEtZwbVRk=s180',
      ),
      Vendor(
        name: VendorName('MQTT'),
        image: 'https://i.ibb.co/hfRhB0Q/mqtt-logo.png',
      ),
      Vendor(
        name: VendorName('Tuya Smart'),
        image:
            'https://play-lh.googleusercontent.com/KGM9NYnyox9TXwoaY3PKl1PfQ2rTPp1rnpNNtmlbgozJZykhZhGKsL3z9myoj4ccayLS=s180',
      ),
      Vendor(
        name: VendorName('Smart Life'),
        image:
            'https://play-lh.googleusercontent.com/Qrq9zB_-bWuAD0ETPeBRTsRHOSjmW_uzmexY5rF7wo2JeNc-oLuvsQSYdg0Uxsq6mkA=s180',
      ),
      Vendor(
        name: VendorName('Jinvoo Smart'),
        image:
            'https://play-lh.googleusercontent.com/ocFF7mcDTJzr1PXr6k4q1Q2-5xNFUVODqluwnD60DiTsHgTalrVTqi7kk0H8JnW7GLEv=s180',
      ),
      Vendor(
        name: VendorName('Eufy'),
        image:
            'https://play-lh.googleusercontent.com/kTVQJspUeisuM03rNaLjdexsqsdz3Eh7dGAiL1WE_32HPHTjZmCELzsyym2LW3dY5fM=s180',
      ),
      Vendor(
        name: VendorName('Philips Hue'),
        image:
            'https://play-lh.googleusercontent.com/FUlW6h3cACamheiCHH1cE67irohAZq_dJ92irK92cryKwHUtY6ZTSv5d041qPZ9UOt3n=s180',
      ),
      Vendor(
        name: VendorName('Yeelight'),
        image:
            'https://play-lh.googleusercontent.com/bteU9OSFF9z596eUOkGgM3XpWF2-b1VsKvmwWFitaI4qMwVPmx3lS09fHFDx8-CX3Q=s180',
      ),
      Vendor(
        name: VendorName('ESPHome'),
        image: 'https://i.ibb.co/W2YG23s/ESPHome-logo.png',
      ),
      Vendor(
        name: VendorName('Ring'),
        image:
            'https://play-lh.googleusercontent.com/fbIl2IKPAG4_3lNnwsi0qMBTJEgOsIwBUYzrs5_GIRYRBHov_a5eJ0bMxEUNMu67G4Ws=s180',
      ),
      Vendor(
        name: VendorName('Google'),
        image:
            'https://play-lh.googleusercontent.com/DKoidc0T3T1KvYC2stChcX9zwmjKj1pgmg3hXzGBDQXM8RG_7JjgiuS0CLOh8DUa7as=s180',
      ),
      Vendor(
        name: VendorName('Philips Hue'),
        image:
            'https://play-lh.googleusercontent.com/FUlW6h3cACamheiCHH1cE67irohAZq_dJ92irK92cryKwHUtY6ZTSv5d041qPZ9UOt3n=s180',
      ),
      Vendor(
        name: VendorName('Ikea'),
        image:
            'https://play-lh.googleusercontent.com/IFwqvqScIUpmiyp4dD4NwJuQ3D2Xa6xRkGLHtLcVNaBKrZ6048MsrRTZ7uaL76xKp4E=s180',
      ),
      Vendor(
        name: VendorName('Wink'),
        image:
            'https://play-lh.googleusercontent.com/cFGBLtsmWJGXcc6Nc_saGVz4d8bzxgA_VsCF1EoLYA_tlAcKOoPZD-RBABC8qho4j54=s180',
      ),
      Vendor(
        name: VendorName('Shelly'),
        image:
            'https://play-lh.googleusercontent.com/cwAyt0LIs4cyXSs2jr79xjAxsuq4KoBTZNq__gpeQvupH-8PElGn6kiddx8-WfG8wEPl=s180',
      ),
      Vendor(
        name: VendorName('Jinvoo Smart'),
        image:
            'https://play-lh.googleusercontent.com/ocFF7mcDTJzr1PXr6k4q1Q2-5xNFUVODqluwnD60DiTsHgTalrVTqi7kk0H8JnW7GLEv=s180',
      ),
      Vendor(
        name: VendorName('Smart Life'),
        image:
            'https://play-lh.googleusercontent.com/Qrq9zB_-bWuAD0ETPeBRTsRHOSjmW_uzmexY5rF7wo2JeNc-oLuvsQSYdg0Uxsq6mkA=s180',
      ),
      Vendor(
        name: VendorName('HP'),
        image:
            'https://play-lh.googleusercontent.com/UF16mldRKpQUUWhRZlDnT1FjkAjWSu9NXVBEDoTgScI_eo_6yEL0oKtc2-OvPXcG3PmN=s180',
      ),
      Vendor(
        name: VendorName('CBJ Devices'),
        image:
            'https://github.com/CyBear-Jinni/CBJ_Site/blob/master/assets/images/cbj_app_icon_no_bg.png?raw=true',
      ),
      Vendor(
        name: VendorName('Google'),
        image:
            'https://play-lh.googleusercontent.com/aFWiT2lTa9CYBpyPjfgfNHd0r5puwKRGj2rHpdPTNrz2N9LXgN_MbLjePd1OTc0E8Rl1=s180',
      ),
    ].toImmutableList();
  }
}
