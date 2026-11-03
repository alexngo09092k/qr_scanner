import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_scanner/common/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.gradient,
    this.titleColor,
    this.titleSize = 15,
    this.color,
    this.width,
    this.height,
    this.onTap,
    this.child,
    this.icon,
    this.title,
    this.isLoading = false,
    this.isDisabled = false,
  }) : super(key: key);

  final Gradient? gradient;
  final String? title;
  final Color? titleColor;
  final Color? color;
  final double? width;
  final double? height;
  final double? titleSize;
  final Widget? child;
  final Widget? icon;
  final bool isLoading;
  final bool isDisabled;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final useGradient = gradient != null || color == null;
    final bg = color ?? Theme.of(context).colorScheme.primary;

    return GestureDetector(
      onTap: isDisabled ? null : onTap,
      child: Opacity(
        opacity: isDisabled ? 0.45 : 1,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          height: height,
          width: width,
          padding: EdgeInsets.symmetric(
            horizontal: AppDimensions.instance.paddingX(1.1),
            vertical: AppDimensions.instance.paddingX(0.9),
          ),
          decoration: BoxDecoration(
            color: useGradient && gradient == null && color == null
                ? null
                : (useGradient && gradient != null ? null : bg),
            gradient: useGradient
                ? (gradient ?? AppColors.instance.gradient)
                : null,
            borderRadius: BorderRadius.circular(AppDimensions.instance.radiusX(0.9)),
            boxShadow: isDisabled
                ? null
                : [AppColors.instance.glowPrimary],
          ),
          child: isLoading
              ? CupertinoActivityIndicator(
                  color: titleColor ?? Colors.white,
                )
              : child ??
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (icon != null) ...[
                          icon!,
                          SizedBox(width: AppDimensions.instance.paddingX(0.5)),
                        ],
                        if (title != null)
                          Text(
                            title!,
                            style: TextStyle(
                              color: titleColor ?? Colors.white,
                              fontSize: titleSize,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.15,
                            ),
                          ),
                      ],
                    ),
                  ),
        ),
      ),
    );
  }
}
