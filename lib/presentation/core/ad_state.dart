// import 'dart:io';

// import 'package:cybearjinni/infrastructure/core/logger.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

// class AdState {
//   AdState(this.initialization);

//   Future<InitializationStatus> initialization;

//   String get bannerAdUnitId => Platform.isAndroid
//       ? 'ca-app-pub-3940256099942544/6300978111'
//       : 'ca-app-pub-3940256099942544/2934735716';

//   BannerAdListener get adListener => _adListener;

//   final BannerAdListener _adListener = AdManagerBannerAdListener(
//     onAdLoaded: (ad) => logger.t('Ad loaded: ${ad.adUnitId}.'),
//     onAdClosed: (ad) => logger.t('Ad closed: ${ad.adUnitId}.'),
//     onAdFailedToLoad: (ad, error) =>
//         logger.t('Ad failed to load: ${ad.adUnitId}, $error.'),
//     onAdOpened: (ad) => logger.t('Ad opened: ${ad.adUnitId}.'),
//     onAppEvent: (ad, name, data) =>
//         logger.t('App event: ${ad.adUnitId}, $name, $data'),
//     onAdImpression: (ad) => logger.t('Ad impression: ${ad.adUnitId}.'),
//     onAdWillDismissScreen: (ad) =>
//         logger.t('Ad dismiss screen: ${ad.adUnitId}.'),
//   );
// }
