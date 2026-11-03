import 'package:flutter/material.dart';
import 'package:qr_scanner/common/constants.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    this.child,
    this.padding,
    this.margin,
    this.color,
    this.onTap,
    this.borderRadius,
    this.border,
    this.gradient,
    this.constraints,
    this.width,
    this.height,
    this.alignment,
    this.clipBehavior = Clip.antiAlias,
  });

  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final Gradient? gradient;
  final BoxConstraints? constraints;
  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;
  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final radius = borderRadius ??
        BorderRadius.all(Radius.circular(AppDimensions.instance.radius));

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        constraints: constraints,
        alignment: alignment,
        margin: margin,
        padding: padding,
        clipBehavior: clipBehavior,
        decoration: BoxDecoration(
          color: gradient == null
              ? (color ?? Theme.of(context).colorScheme.surface)
              : null,
          gradient: gradient,
          borderRadius: radius,
          border: border ??
              Border.all(
                color: isDark ? const Color(0xFF1C2436) : const Color(0xFFEBEEF5),
                width: 1,
              ),
          boxShadow: gradient == null ? [AppColors.instance.boxShadowSoft] : null,
        ),
        child: child,
      ),
    );
  }
}
