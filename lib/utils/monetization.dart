import 'package:fluttering/fluttering.dart';
import 'package:fluttering_ads/fluttering_ads.dart';
import 'package:fluttering_iap/fluttering_iap.dart';

/// Central place for ads + premium gating.
/// Does not change product IDs or provider config — only when/how ads show.
class Monetization {
  Monetization._();
  static final Monetization instance = Monetization._();

  /// Actions between interstitial ads (scan / generate).
  static const int interstitialEvery = 2;

  int _actionCount = 0;
  DateTime? _lastInterstitialAt;

  /// True if user owns any non-consumable / remove-ads product.
  bool get isPremium {
    try {
      final products = AwesomeIAP.instance.products;
      if (products.any((p) => p.status == true)) return true;
    } catch (_) {}
    return false;
  }

  /// Whether banner / roll / native widgets should render.
  bool get shouldShowBannerAds =>
      AwesomeAdvertisement.instance.config.enable && !isPremium;

  /// Show interstitial after high-value actions (scan / generate).
  /// Frequency-capped to avoid hurting retention.
  void onHighValueAction() {
    if (isPremium) return;
    if (!AwesomeAdvertisement.instance.config.enable) return;

    _actionCount++;
    if (_actionCount < interstitialEvery) return;

    final now = DateTime.now();
    if (_lastInterstitialAt != null &&
        now.difference(_lastInterstitialAt!) < const Duration(seconds: 45)) {
      return;
    }

    _actionCount = 0;
    _lastInterstitialAt = now;

    // Prefer interstitial unit if configured; otherwise random handle ad.
    final interstitial = _findAd(AdvertisementType.interstitial);
    try {
      if (interstitial != null) {
        AwesomeAdvertisement.instance.handleAd(ad: interstitial);
      } else {
        AwesomeAdvertisement.instance.handleAd();
      }
    } catch (e) {
      Debug.log('Monetization interstitial error: $e');
    }
  }

  /// App open / resume — splash or open-app style handle ads.
  void onAppOpen() {
    if (isPremium) return;
    if (!AwesomeAdvertisement.instance.config.enable) return;
    try {
      final splash = _findAd(AdvertisementType.splash);
      if (splash != null) {
        AwesomeAdvertisement.instance.handleAd(ad: splash);
      } else {
        AwesomeAdvertisement.instance.handleAd();
      }
    } catch (e) {
      Debug.log('Monetization app-open ad error: $e');
    }
  }

  AdvertisementItem? _findAd(AdvertisementType type) {
    try {
      final list = AwesomeAdvertisement.instance.config.ads
          .where((e) => e.type == type)
          .toList();
      if (list.isEmpty) return null;
      return list.first;
    } catch (_) {
      return null;
    }
  }
}
