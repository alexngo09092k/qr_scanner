import 'package:flutter/material.dart';
import 'package:fluttering/fluttering.dart';
import 'package:qr_scanner/common/configuration.dart';
import 'package:qr_scanner/common/constants.dart';
import 'package:qr_scanner/generated/l10n.dart';
import 'package:qr_scanner/widgets/app_use/app_layout.dart';
import 'package:qr_scanner/widgets/base/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class MaintenancePage extends StatelessWidget {
  const MaintenancePage({super.key});

  Future<void> _openLink() async {
    final link = Configuration.instance.business.maintenanceMode.link;
    if (link.isEmpty) return;
    final uri = Uri.tryParse(link);
    if (uri != null && await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mode = Configuration.instance.business.maintenanceMode;

    return AppLayout(
      screen: S.of(context).maintenance,
      appBar: false,
      back: false,
      useSafeArea: true,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      padding: EdgeInsets.all(AppDimensions.instance.paddingX(2)),
      children: [
        Icon(
          Icons.construction_rounded,
          size: 80,
          color: Theme.of(context).colorScheme.primary,
        ),
        SizedBox(height: AppDimensions.instance.paddingX(1.5)),
        Text(
          mode.title.isNotEmpty ? mode.title : S.of(context).maintenance,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: AppDimensions.instance.padding),
        Text(
          mode.message.isNotEmpty
              ? mode.message
              : S.of(context).maintenanceMessage,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).disabledColor,
              ),
        ),
        if (mode.link.isNotEmpty) ...[
          SizedBox(height: AppDimensions.instance.paddingX(2)),
          CustomButton(
            title: S.of(context).learnMore,
            height: 50,
            width: double.infinity,
            gradient: AppColors.instance.gradient,
            onTap: _openLink,
          ),
        ],
        SizedBox(height: AppDimensions.instance.padding),
        Text(
          Configuration.instance.business.appName,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).disabledColor,
              ),
        ),
      ],
    );
  }
}
