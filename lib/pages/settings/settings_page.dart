// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:fluttering/fluttering.dart';
import 'package:share_plus/share_plus.dart';
import 'package:qr_scanner/common/app_routes.dart';
import 'package:qr_scanner/common/configuration.dart';
import 'package:qr_scanner/common/constants.dart';
import 'package:qr_scanner/generated/l10n.dart';
import 'package:qr_scanner/utils/widget.dart';
import 'package:qr_scanner/widgets/app_use/app_layout.dart';
import 'package:qr_scanner/widgets/app_use/language_picker.dart';
import 'package:qr_scanner/widgets/base/ad_view.dart';
import 'package:qr_scanner/widgets/base/app_card.dart';
import 'package:qr_scanner/widgets/base/custom_alert.dart';
import 'package:qr_scanner/widgets/base/custom_icon.dart';
import 'package:qr_scanner/widgets/base/lottie_viewer.dart';
import 'package:qr_scanner/widgets/base/separated_list_view.dart';
import 'package:qr_scanner/widgets/base/tile_row.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  void _feedback(BuildContext context) {
    final s = S.of(context);
    final appName = Configuration.instance.business.appName;

    Future<void> mail(BuildContext context) async {
      try {
        final Uri emailLaunchUri = Uri(
          scheme: 'mailto',
          path: Configuration.instance.business.contact,
          query: _encodeQueryParameters({
            'subject': 'Feedback to $appName Team',
          }),
        );
        if (!await launchUrl(emailLaunchUri)) {
          WidgetUtils.instance.showWarningPopup(
            title: s.feedback,
            message: s.failedOpenMail,
            retry: mail,
          );
        }
      } catch (error) {
        Debug.log('FEEDBACK ERROR $error');
        WidgetUtils.instance.showWarningPopup(
          title: s.feedback,
          message: s.failedOpenMail,
          retry: mail,
        );
      }
    }

    WidgetUtils.instance.alert(
      context,
      title: s.areYouHappy(appName),
      message: s.feedbackHelp,
      actions: [
        AlertAction(
          title: s.cancel,
          isDestructiveAction: true,
          onPressed: Navigator.of(context).pop,
        ),
        AlertAction(
          title: s.send,
          onPressed: () async {
            Navigator.of(context).pop();
            mail(context);
          },
        ),
      ],
    );
  }

  void _showSharePopup(BuildContext context) {
    final s = S.of(context);
    final appName = Configuration.instance.business.appName;

    WidgetUtils.instance.alert(
      context,
      title: s.shareApp,
      message: Configuration.instance.business.appBio,
      actions: [
        AlertAction(
          title: s.cancel,
          isDestructiveAction: true,
          onPressed: Navigator.of(context).pop,
        ),
        AlertAction(
          title: s.share,
          onPressed: () {
            Navigator.of(context).pop();
            if (Configuration.instance.business.shareApp.link != null) {
              Share.share(
                Configuration.instance.business.shareApp.link!,
                subject: '$appName - ${Configuration.instance.business.appBio}',
              );
            }
          },
        ),
      ],
    );
  }

  Future<void> _launchUrlInApp(BuildContext context, String url) async {
    final s = S.of(context);
    try {
      if (!await launchUrl(Uri.parse(url), mode: LaunchMode.inAppWebView)) {
        WidgetUtils.instance.showWarningPopup(
          title: s.openBrowser,
          message: s.failedOpenBrowser,
          retry: (_) => _launchUrlInApp(context, url),
        );
      }
    } catch (error) {
      Debug.log('LAUNCH URL ERROR $error');
      WidgetUtils.instance.showWarningPopup(
        title: s.openBrowser,
        message: s.failedOpenBrowser,
        retry: (_) => _launchUrlInApp(context, url),
      );
    }
  }

  void _toggleTheme(BuildContext context) {
    final provider = ManagerProvider.of<IThemeProvider>();
    final next =
        provider.themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    provider.changeThemeMode(next);
  }

  Widget _sectionLabel(BuildContext context, String text) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppDimensions.instance.paddingX(1.35),
        AppDimensions.instance.paddingX(0.35),
        AppDimensions.instance.padding,
        AppDimensions.instance.paddingX(0.55),
      ),
      child: Text(
        text.toUpperCase(),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: Theme.of(context).disabledColor,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.8,
            ),
      ),
    );
  }

  Widget _languageTile(BuildContext context) {
    final s = S.of(context);
    final provider = ManagerProvider.of<IThemeProvider>();
    final current = AppLanguage.fromLocale(provider.locale);
    final primary = Theme.of(context).colorScheme.primary;

    return TileRow(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.instance.padding,
        vertical: AppDimensions.instance.paddingX(0.85),
      ),
      onTap: (_) => LanguagePicker.show(context),
      leading: Padding(
        padding: EdgeInsets.only(right: AppDimensions.instance.paddingX(0.85)),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            gradient: AppColors.instance.gradientSoft,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: primary.withOpacity(0.12)),
          ),
          alignment: Alignment.center,
          child: Text(current.flag, style: const TextStyle(fontSize: 18)),
        ),
      ),
      main: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            s.language,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.1,
                ),
          ),
          const SizedBox(height: 2),
          Text(
            current.nameKey(s),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).disabledColor,
                ),
          ),
        ],
      ),
      action: Icon(
        Icons.chevron_right_rounded,
        size: 18,
        color: Theme.of(context).disabledColor,
      ),
    );
  }

  Widget _themeTile(BuildContext context) {
    final s = S.of(context);
    final provider = ManagerProvider.of<IThemeProvider>();
    final isDark = provider.themeMode == ThemeMode.dark;
    final primary = Theme.of(context).colorScheme.primary;

    return TileRow(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.instance.padding,
        vertical: AppDimensions.instance.paddingX(0.85),
      ),
      onTap: (_) => _toggleTheme(context),
      leading: Padding(
        padding: EdgeInsets.only(right: AppDimensions.instance.paddingX(0.85)),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            gradient: AppColors.instance.gradientSoft,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: primary.withOpacity(0.12)),
          ),
          alignment: Alignment.center,
          child: Icon(
            isDark ? Icons.dark_mode_rounded : Icons.light_mode_rounded,
            size: 18,
            color: primary,
          ),
        ),
      ),
      main: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            s.theme,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.1,
                ),
          ),
          const SizedBox(height: 2),
          Text(
            isDark ? s.darkMode : s.lightMode,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).disabledColor,
                ),
          ),
        ],
      ),
      action: Switch.adaptive(
        value: isDark,
        activeColor: primary,
        onChanged: (_) => _toggleTheme(context),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Consumer<IThemeProvider>(
      builder: (_, __, provider) {
        return AppLayout(
          screen: s.settingsTitle,
          appBar: true,
          back: false,
          scroll: true,
          center: Text(
            s.settingsTitle,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: AppDimensions.instance.paddingX(0.4),
                bottom: AppDimensions.instance.paddingX(0.6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    s.versionLabel(Configuration.instance.business.version),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).disabledColor,
                        ),
                  ),
                  const SizedBox(width: 6),
                  LottieViewer(
                    lottie: AppAssets.instance.heartTeam,
                    width: 18,
                    height: 18,
                  ),
                ],
              ),
            ),
            _sectionLabel(context, s.appearance),
            AppCard(
              margin: EdgeInsets.symmetric(
                  horizontal: AppDimensions.instance.padding),
              child: SeparatedListView.withList(
                separator: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppDimensions.instance.padding),
                  child: const Divider(height: 0),
                ),
                list: [
                  _languageTile(context),
                  _themeTile(context),
                ],
              ),
            ),
            SizedBox(height: AppDimensions.instance.padding),
            AppCard(
              margin: EdgeInsets.symmetric(
                  horizontal: AppDimensions.instance.padding),
              child: TileRow.defaultStyle(
                context,
                title: '${s.goPremium} — ${s.removeAds}',
                image: AppAssets.instance.icRate,
                onTap: (_) =>
                    Navigator.of(context).pushNamed(AppRoutes.premiumPage),
              ),
            ),
            SizedBox(height: AppDimensions.instance.padding),
            if (Configuration.instance.business.webLinks.isNotEmpty) ...[
              _sectionLabel(context, s.general),
              AppCard(
                margin: EdgeInsets.symmetric(
                    horizontal: AppDimensions.instance.padding),
                child: SeparatedListView.withList(
                  separator: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.instance.padding),
                    child: const Divider(height: 0),
                  ),
                  list: Configuration.instance.business.webLinks
                      .map(
                        (e) => TileRow.defaultStyle(
                          context,
                          title: e.title,
                          image: e.image,
                          onTap: (_) => _launchUrlInApp(context, e.link),
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(height: AppDimensions.instance.padding),
            ],
            _sectionLabel(context, s.support),
            AppCard(
              margin: EdgeInsets.symmetric(
                  horizontal: AppDimensions.instance.padding),
              child: SeparatedListView.withList(
                separator: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppDimensions.instance.padding),
                  child: const Divider(height: 0),
                ),
                list: [
                  TileRow.defaultStyle(
                    context,
                    title: s.feedback,
                    image: AppAssets.instance.icFeedback,
                    onTap: _feedback,
                  ),
                  TileRow.defaultStyle(
                    context,
                    title: s.rateApp,
                    image: AppAssets.instance.icRate,
                    onTap: _feedback,
                  ),
                  TileRow.defaultStyle(
                    context,
                    title: s.shareApp,
                    image: AppAssets.instance.icShare,
                    onTap: _showSharePopup,
                  ),
                ],
              ),
            ),
            SizedBox(height: AppDimensions.instance.padding),
            if (Configuration.instance.business.socialNetworks.isNotEmpty) ...[
              AppCard(
                margin: EdgeInsets.symmetric(
                    horizontal: AppDimensions.instance.padding),
                child: SeparatedListView.withList(
                  separator: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.instance.padding),
                    child: const Divider(height: 0),
                  ),
                  list: Configuration.instance.business.socialNetworks
                      .map(
                        (e) => TileRow.defaultStyle(
                          context,
                          title: e.brand,
                          image: e.image,
                          normal: true,
                          onTap: (_) => _launchUrlInApp(context, e.link),
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(height: AppDimensions.instance.padding),
            ],
            const AdView(),
            SizedBox(height: AppDimensions.instance.paddingX(2)),
          ],
        );
      },
    );
  }
}
