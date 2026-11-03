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
    return GestureDetector(
      onTap: () => _onView(context),
      onLongPress: () => _onDelete(context),
      child: AppCard(
        margin: EdgeInsets.only(bottom: AppDimensions.instance.padding).copyWith(
          left: AppDimensions.instance.padding,
          right: AppDimensions.instance.padding,
        ),
        padding: EdgeInsets.all(AppDimensions.instance.padding),
        child: Row(
          children: [
            CustomIcon(
              qr.type.icon,
              size: AppDimensions.instance.iconX(1.5),
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(width: AppDimensions.instance.padding),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    qr.rawData,
                    style: Theme.of(context).textTheme.bodyLarge,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    qr.type.label,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => _onDelete(context),
              child: Padding(
                padding: EdgeInsets.only(left: AppDimensions.instance.paddingX(0.5)),
                child: Icon(
                  Icons.delete_outline,
                  color: Theme.of(context).colorScheme.error.withOpacity(0.7),
                  size: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
