import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_scanner/common/constants.dart';
import 'package:qr_scanner/widgets/base/custom_icon.dart';

class TileRow extends StatelessWidget {
  const TileRow({
    super.key,
    this.leading,
    required this.main,
    this.action,
    this.onTap,
    this.padding,
  });

  final Widget? leading;
  final Widget main;
  final Widget? action;
  final EdgeInsetsGeometry? padding;
  final void Function(BuildContext)? onTap;

  factory TileRow.defaultStyle(
    BuildContext context, {
    required String title,
    String? image,
    void Function(BuildContext)? onTap,
    bool normal = false,
  }) {
    final primary = Theme.of(context).colorScheme.primary;
    return TileRow(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.instance.padding,
        vertical: AppDimensions.instance.paddingX(0.95),
      ),
      onTap: onTap,
      main: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
              letterSpacing: -0.1,
            ),
      ),
      leading: image != null
          ? Padding(
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
                child: CustomIcon(
                  image,
                  normal: normal,
                  size: 18,
                  color: primary,
                ),
              ),
            )
          : null,
      action: Icon(
        CupertinoIcons.chevron_forward,
        size: 15,
        color: Theme.of(context).disabledColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap != null ? () => onTap!(context) : null,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    leading ?? const SizedBox(),
                    Flexible(child: main),
                  ],
                ),
              ),
              action ?? const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
