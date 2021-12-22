import 'dart:io';

import 'package:cybear_jinni/utils.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdState {
  AdState(this.initialization);

  Future<InitializationStatus> initialization;

  String get bannerAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-3940256099942544/2934735716';

  BannerAdListener get adListener => _adListener;

  final BannerAdListener _adListener = AdManagerBannerAdListener(
    onAdLoaded: (ad) => logger.v('Ad loaded: ${ad.adUnitId}.'),
    onAdClosed: (ad) => logger.v('Ad closed: ${ad.adUnitId}.'),
    onAdFailedToLoad: (ad, error) =>
        logger.v('Ad failed to load: ${ad.adUnitId}, $error.'),
    onAdOpened: (ad) => logger.v('Ad opened: ${ad.adUnitId}.'),
    onAppEvent: (ad, name, data) =>
        logger.v('App event: ${ad.adUnitId}, $name, $data'),
    onAdImpression: (ad) => logger.v('Ad impression: ${ad.adUnitId}.'),
    onAdWillDismissScreen: (ad) =>
        logger.v('Ad dismiss screen: ${ad.adUnitId}.'),
  );
}
