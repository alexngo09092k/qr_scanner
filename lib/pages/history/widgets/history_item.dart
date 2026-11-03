import 'package:flutter/material.dart';
import 'package:qr_scanner/common/app_routes.dart';
import 'package:qr_scanner/common/constants.dart';
import 'package:qr_scanner/generated/l10n.dart';
import 'package:qr_scanner/models/qr.dart';
import 'package:qr_scanner/models/qr_type.dart';
import 'package:qr_scanner/providers/history_provider.dart';
import 'package:qr_scanner/utils/widget.dart';
import 'package:qr_scanner/widgets/base/app_card.dart';
import 'package:qr_scanner/widgets/base/custom_alert.dart';
import 'package:qr_scanner/widgets/base/custom_icon.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key, required this.qr});
  final QR qr;

  void _onView(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.viewerPage, arguments: qr);
  }

  void _onDelete(BuildContext context) {
    WidgetUtils.instance.alert(
      context,
      title: S.of(context).deleteQR,
      message: S.of(context).deleteQRMessage,
      actions: [
        AlertAction(
          title: S.of(context).cancel,
          onPressed: () => Navigator.of(context).pop(),
        ),
        AlertAction(
          title: S.of(context).delete,
          isDestructiveAction: true,
          onPressed: () {
            HistoryProvider.instance.deleteQR(qr);
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return GestureDetector(
      onTap: () => _onView(context),
      onLongPress: () => _onDelete(context),
      child: AppCard(
        margin: EdgeInsets.only(
          bottom: 12,
          left: AppDimensions.instance.padding,
          right: AppDimensions.instance.padding,
        ),
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                gradient: AppColors.instance.gradientSoft,
                borderRadius: BorderRadius.circular(14),
              ),
              alignment: Alignment.center,
              child: CustomIcon(
                qr.type.icon,
                size: 22,
                color: primary,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    qr.rawData,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.2,
                        ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    qr.type.label,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).disabledColor,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => _onDelete(context),
              child: Container(
                padding: const EdgeInsets.all(9),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.error.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.delete_outline_rounded,
                  color: Theme.of(context).colorScheme.error.withOpacity(0.9),
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
