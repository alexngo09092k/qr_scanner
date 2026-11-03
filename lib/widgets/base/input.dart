import 'package:flutter/material.dart';
import 'package:qr_scanner/common/constants.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.enabled,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final void Function(String)? onSubmitted;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return TextField(
      enabled: enabled,
      controller: controller,
      focusNode: focusNode,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      onEditingComplete: onEditingComplete,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        filled: true,
        fillColor: isDark ? const Color(0xFF0C1220) : const Color(0xFFF7F8FC),
        contentPadding: EdgeInsets.symmetric(
          vertical: AppDimensions.instance.paddingX(0.85),
          horizontal: AppDimensions.instance.padding,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(AppDimensions.instance.radiusX(0.75)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.instance.radiusX(0.75)),
          borderSide: BorderSide(
            color: isDark ? const Color(0xFF1C2436) : const Color(0xFFE8ECF4),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.instance.radiusX(0.75)),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1.6,
          ),
        ),
      ),
    );
  }
}
