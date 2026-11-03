import 'package:flutter/material.dart';
import 'package:qr_scanner/common/constants.dart';
import 'package:qr_scanner/models/qr_type.dart';
import 'package:qr_scanner/widgets/base/app_card.dart';
import 'package:qr_scanner/widgets/base/custom_icon.dart';

class GenerateItem extends StatelessWidget {
  const GenerateItem({super.key, required this.type, required this.onQRType});
  final QRType type;
  final Function(QRType) onQRType;

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return GestureDetector(
      onTap: () => onQRType(type),
      child: AppCard(
        padding: EdgeInsets.all(AppDimensions.instance.paddingX(0.7)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                gradient: AppColors.instance.gradientSoft,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: primary.withOpacity(0.1)),
              ),
              alignment: Alignment.center,
              child: CustomIcon(
                type.icon,
                size: 26,
                color: primary,
              ),
            ),
            SizedBox(height: AppDimensions.instance.paddingX(0.55)),
            Text(
              type.localizedLabel(context),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    height: 1.15,
                    letterSpacing: -0.15,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
