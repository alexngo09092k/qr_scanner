import 'package:flutter/material.dart';
import 'package:qr_scanner/common/app_routes.dart';
import 'package:qr_scanner/common/constants.dart';
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
      title: 'Delete QR?',
      message: 'Remove this item from history?',
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
          bottom: AppDimensions.instance.paddingX(0.75),
          left: AppDimensions.instance.padding,
          right: AppDimensions.instance.padding,
        ),
        padding: EdgeInsets.all(AppDimensions.instance.paddingX(0.9)),
        child: Row(
          children: [
            Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: primary.withOpacity(0.10),
                borderRadius: BorderRadius.circular(14),
              ),
              alignment: Alignment.center,
              child: CustomIcon(
                qr.type.icon,
                size: AppDimensions.instance.iconX(1.2),
                color: primary,
              ),
            ),
            SizedBox(width: AppDimensions.instance.paddingX(0.85)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    qr.rawData,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w600,
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
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.error.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.delete_outline_rounded,
                  color: Theme.of(context).colorScheme.error.withOpacity(0.85),
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
