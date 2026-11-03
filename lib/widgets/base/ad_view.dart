import 'package:flutter/material.dart';
import 'package:fluttering_ads/fluttering_ads.dart';
import 'package:qr_scanner/common/configuration.dart';
import 'package:qr_scanner/common/constants.dart';
import 'package:qr_scanner/utils/monetization.dart';
import 'package:qr_scanner/widgets/base/app_card.dart';
import 'package:qr_scanner/widgets/base/more_apps.dart';

class AdView extends StatelessWidget {
  const AdView({super.key, this.width, this.height});
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    if (!Monetization.instance.shouldShowBannerAds) {
      return const SizedBox.shrink();
    }

    final contentMaxWidth = AppDimensions.instance.contentMaxWidth;
    final apps = Configuration.instance.business.moreApps;
    final adHeight = height ?? contentMaxWidth * 1 / 3 + AppDimensions.instance.padding;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.instance.padding,
      ).copyWith(top: AppDimensions.instance.padding),
      child: AdBuilder(
        width: width,
        height: adHeight,
        errorBuilder: apps.isNotEmpty
            ? (_) => Padding(
                  padding: EdgeInsets.only(bottom: AppDimensions.instance.padding),
                  child: MoreApps(
                    apps: apps,
                    height: contentMaxWidth * 1 / 3,
                  ),
                )
            : null,
        successBuilder: (_, ad) => Padding(
          padding: EdgeInsets.only(bottom: AppDimensions.instance.padding),
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(AppDimensions.instance.radius),
            ),
            child: AppCard(child: ad),
          ),
        ),
        borderRadius: BorderRadius.zero,
      ),
    );
  }
}
