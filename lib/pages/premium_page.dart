import 'package:flutter/material.dart';
import 'package:fluttering/fluttering.dart';
import 'package:fluttering_iap/fluttering_iap.dart';
import 'package:qr_scanner/common/constants.dart';
import 'package:qr_scanner/generated/l10n.dart';
import 'package:qr_scanner/utils/widget.dart';
import 'package:qr_scanner/widgets/app_use/app_layout.dart';
import 'package:qr_scanner/widgets/base/app_card.dart';
import 'package:qr_scanner/widgets/base/custom_button.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({super.key});

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState
    extends ProviderStateObserver<PremiumPage, IAwesomeIAP> {
  bool _purchasing = false;

  Future<void> _purchase(IAPProduct product) async {
    if (_purchasing) return;
    setState(() => _purchasing = true);
    try {
      await provider.purchase(product);
      if (mounted) {
        WidgetUtils.instance.snack(message: S.of(context).purchaseCompleted);
      }
    } catch (e) {
      Debug.log('Purchase error: $e');
      if (mounted) {
        WidgetUtils.instance.showWarningPopup(
          title: S.of(context).purchaseFailed,
          message: S.of(context).purchaseFailedMessage,
        );
      }
    } finally {
      if (mounted) setState(() => _purchasing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final products = provider.products;
    final primaryProduct = products.isNotEmpty ? products.first : null;
    final alreadyPurchased = primaryProduct?.status == true;

    return AppLayout(
      screen: S.of(context).goPremium,
      appBar: true,
      back: true,
      scroll: true,
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.instance.padding),
      children: [
        SizedBox(height: AppDimensions.instance.paddingX(1.5)),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(AppDimensions.instance.paddingX(2)),
          decoration: BoxDecoration(
            gradient: AppColors.instance.gradient,
            borderRadius:
                BorderRadius.circular(AppDimensions.instance.radius * 1.5),
            boxShadow: [AppColors.instance.boxShadow],
          ),
          child: Column(
            children: [
              Icon(
                Icons.workspace_premium_rounded,
                size: 64,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              SizedBox(height: AppDimensions.instance.padding),
              Text(
                alreadyPurchased
                    ? S.of(context).youArePremium
                    : S.of(context).removeAds,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.3,
                    ),
              ),
              SizedBox(height: AppDimensions.instance.paddingX(0.5)),
              Text(
                alreadyPurchased
                    ? S.of(context).enjoyUnlimited
                    : S.of(context).unlockAdFree,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(0.9),
                    ),
              ),
            ],
          ),
        ),
        SizedBox(height: AppDimensions.instance.paddingX(1.5)),
        AppCard(
          padding: EdgeInsets.all(AppDimensions.instance.padding),
          child: Column(
            children: [
              _BenefitRow(
                icon: Icons.block,
                title: S.of(context).noMoreAds,
                subtitle: S.of(context).noMoreAdsSubtitle,
              ),
              Divider(height: 24),
              _BenefitRow(
                icon: Icons.bolt,
                title: S.of(context).fasterExperience,
                subtitle: S.of(context).fasterExperienceSubtitle,
              ),
              Divider(height: 24),
              _BenefitRow(
                icon: Icons.favorite,
                title: S.of(context).supportDev,
                subtitle: S.of(context).supportDevSubtitle,
              ),
            ],
          ),
        ),
        SizedBox(height: AppDimensions.instance.paddingX(2)),
        if (alreadyPurchased)
          CustomButton(
            title: S.of(context).premiumActive,
            height: 54,
            width: double.infinity,
            isDisabled: true,
            onTap: null,
          )
        else if (primaryProduct != null) ...[
          CustomButton(
            title: primaryProduct.info?.name ?? S.of(context).removeAds,
            height: 54,
            width: double.infinity,
            isLoading: _purchasing,
            onTap: () => _purchase(primaryProduct),
            gradient: AppColors.instance.gradient,
            child: _purchasing
                ? null
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        primaryProduct.info?.name ?? S.of(context).removeAds,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.3,
                        ),
                      ),
                      if (primaryProduct.info != null)
                        Text(
                          primaryProduct.info!.price,
                          style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimary
                                .withOpacity(0.9),
                            fontSize: 13,
                          ),
                        ),
                    ],
                  ),
          ),
          if (primaryProduct.info != null) ...[
            SizedBox(height: AppDimensions.instance.padding),
            Text(
              primaryProduct.info!.description,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).disabledColor,
                  ),
            ),
          ],
        ] else
          CustomButton(
            title: S.of(context).premiumUnavailable,
            height: 50,
            width: double.infinity,
            isDisabled: true,
            onTap: null,
          ),
        SizedBox(height: AppDimensions.instance.paddingX(2)),
        Text(
          S.of(context).paymentSecure,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).disabledColor,
              ),
        ),
        SizedBox(height: AppDimensions.instance.paddingX(2)),
      ],
    );
  }
}

class _BenefitRow extends StatelessWidget {
  const _BenefitRow({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(AppDimensions.instance.paddingX(0.6)),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.12),
            borderRadius: BorderRadius.circular(AppDimensions.instance.radius),
          ),
          child: Icon(icon,
              color: Theme.of(context).colorScheme.primary, size: 22),
        ),
        SizedBox(width: AppDimensions.instance.padding),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).disabledColor,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
