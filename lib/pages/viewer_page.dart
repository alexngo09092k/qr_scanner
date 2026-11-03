import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttering/fluttering.dart';
import 'package:qr_scanner/common/constants.dart';
import 'package:qr_scanner/models/qr.dart';
import 'package:qr_scanner/models/qr_format.dart';
import 'package:qr_scanner/models/qr_source.dart';
import 'package:qr_scanner/models/qr_type.dart';
import 'package:qr_scanner/providers/history_provider.dart';
import 'package:qr_scanner/utils/qr.dart';
import 'package:qr_scanner/utils/widget.dart';
import 'package:qr_scanner/widgets/app_use/app_layout.dart';
import 'package:qr_scanner/widgets/base/app_card.dart';
import 'package:qr_scanner/widgets/base/custom_alert.dart';
import 'package:qr_scanner/widgets/base/custom_button.dart';
import 'package:qr_scanner/widgets/base/custom_icon.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewerPage extends StatelessWidget {
  const ViewerPage(this.qr, {super.key});
  final QR qr;

  bool get _canOpen {
    switch (qr.type) {
      case QRType.link:
      case QRType.youtube:
      case QRType.facebook:
      case QRType.instagram:
      case QRType.twitter:
      case QRType.tiktok:
      case QRType.douyin:
      case QRType.snapchat:
      case QRType.telegram:
      case QRType.whatsapp:
      case QRType.maps:
      case QRType.email:
      case QRType.tel:
      case QRType.sms:
        return true;
      default:
        return QRUtils.instance.isURL(qr.rawData);
    }
  }

  String get _openLabel {
    switch (qr.type) {
      case QRType.email:
        return 'Send Email';
      case QRType.tel:
        return 'Call';
      case QRType.sms:
        return 'Send SMS';
      case QRType.maps:
        return 'Open Maps';
      case QRType.wifi:
        return 'Wi-Fi Info';
      default:
        return 'Open';
    }
  }

  Future<void> _copy(BuildContext context) async {
    await Clipboard.setData(ClipboardData(text: qr.rawData));
    WidgetUtils.instance.snack(message: 'Copied to clipboard');
  }

  Future<void> _share() async {
    await Share.share(qr.rawData, subject: 'QR Code - ${qr.type.label}');
  }

  Future<void> _open(BuildContext context) async {
    Uri? uri;
    final raw = qr.rawData.trim();

    try {
      switch (qr.type) {
        case QRType.email:
          uri = Uri.parse(raw.startsWith('mailto:') ? raw : 'mailto:$raw');
          break;
        case QRType.tel:
          uri = Uri.parse(raw.startsWith('tel:') ? raw : 'tel:$raw');
          break;
        case QRType.sms:
          uri = Uri.parse(
            raw.startsWith('sms:') || raw.startsWith('SMSTO:') ? raw : 'sms:$raw',
          );
          break;
        case QRType.maps:
          if (raw.startsWith('geo:') || raw.startsWith('http')) {
            uri = Uri.parse(raw);
          } else {
            uri = Uri.parse(
              'https://www.google.com/maps/search/?api=1&query=${Uri.encodeComponent(raw)}',
            );
          }
          break;
        case QRType.wifi:
          WidgetUtils.instance.snack(message: raw);
          return;
        default:
          if (raw.startsWith('http://') || raw.startsWith('https://')) {
            uri = Uri.parse(raw);
          } else if (QRUtils.instance.isURL(raw)) {
            uri = Uri.parse(raw.startsWith('http') ? raw : 'https://$raw');
          } else {
            uri = Uri.tryParse(raw);
          }
      }

      if (uri != null && await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else if (context.mounted) {
        WidgetUtils.instance.showWarningPopup(
          title: 'Open failed',
          message: 'Cannot open this content. Please try copy instead.',
        );
      }
    } catch (e) {
      Debug.log('Open error: $e');
      if (context.mounted) {
        WidgetUtils.instance.showWarningPopup(
          title: 'Open failed',
          message: 'Cannot open this content.',
        );
      }
    }
  }

  void _delete(BuildContext context) {
    WidgetUtils.instance.alert(
      context,
      title: 'Delete QR?',
      message: 'This QR will be removed from history.',
      actions: [
        AlertAction(
          title: 'Cancel',
          onPressed: () => Navigator.of(context).pop(),
        ),
        AlertAction(
          title: 'Delete',
          isDestructiveAction: true,
          onPressed: () {
            HistoryProvider.instance.deleteQR(qr);
            Navigator.of(context).pop();
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final isQr = qr.format == QRFormat.QrCode ||
        qr.format == QRFormat.Aztec ||
        qr.format == QRFormat.DataMatrix;
    final barcodeSize = AwesomeAppState.screen.width * 0.65;

    return AppLayout(
      screen: qr.type.label,
      appBar: true,
      back: true,
      scroll: true,
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.instance.padding),
      children: [
        SizedBox(height: AppDimensions.instance.padding),
        AppCard(
          padding: EdgeInsets.all(AppDimensions.instance.paddingX(1.5)),
          child: Column(
            children: [
              BarcodeWidget(
                width: barcodeSize,
                height: isQr ? barcodeSize : barcodeSize * 0.4,
                data: qr.rawData,
                barcode: qr.format.barcode,
                color: Theme.of(context).colorScheme.onSurface,
                backgroundColor: Colors.transparent,
                errorBuilder: (context, error) => Padding(
                  padding: EdgeInsets.all(AppDimensions.instance.padding),
                  child: Text(
                    'Cannot render this format',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(height: AppDimensions.instance.padding),
              Text(
                qr.format.label,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).disabledColor,
                    ),
              ),
            ],
          ),
        ),
        SizedBox(height: AppDimensions.instance.padding),
        AppCard(
          padding: EdgeInsets.all(AppDimensions.instance.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomIcon(
                    qr.type.icon,
                    size: AppDimensions.instance.iconX(1.2),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(width: AppDimensions.instance.paddingX(0.5)),
                  Text(
                    qr.type.label,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const Spacer(),
                  Text(
                    qr.source == QRSource.scan ? 'Scanned' : 'Generated',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).disabledColor,
                        ),
                  ),
                ],
              ),
              SizedBox(height: AppDimensions.instance.padding),
              SelectableText(
                qr.rawData,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        SizedBox(height: AppDimensions.instance.paddingX(1.5)),
        if (_canOpen)
          CustomButton(
            title: _openLabel,
            height: 50,
            width: double.infinity,
            onTap: () => _open(context),
            gradient: AppColors.instance.gradient,
          ),
        if (_canOpen) SizedBox(height: AppDimensions.instance.padding),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Copy',
                height: 50,
                color: Theme.of(context).colorScheme.surface,
                titleColor: Theme.of(context).colorScheme.onSurface,
                onTap: () => _copy(context),
              ),
            ),
            SizedBox(width: AppDimensions.instance.padding),
            Expanded(
              child: CustomButton(
                title: 'Share',
                height: 50,
                color: Theme.of(context).colorScheme.surface,
                titleColor: Theme.of(context).colorScheme.onSurface,
                onTap: _share,
              ),
            ),
          ],
        ),
        SizedBox(height: AppDimensions.instance.padding),
        CustomButton(
          title: 'Delete',
          height: 50,
          width: double.infinity,
          color: Theme.of(context).colorScheme.error.withOpacity(0.15),
          titleColor: Theme.of(context).colorScheme.error,
          onTap: () => _delete(context),
        ),
        SizedBox(height: AppDimensions.instance.paddingX(2)),
      ],
    );
  }
}
