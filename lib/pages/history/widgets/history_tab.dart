import 'package:flutter/material.dart';
import 'package:qr_scanner/common/constants.dart';
import 'package:qr_scanner/generated/l10n.dart';
import 'package:qr_scanner/models/qr_source.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key, required this.tab, required this.onChanged});

  final ValueNotifier<QRSource> tab;
  final Function(QRSource) onChanged;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<QRSource>(
      valueListenable: tab,
      builder: (_, value, __) {
        final isDark = Theme.of(context).brightness == Brightness.dark;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.instance.padding),
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: isDark ? const Color(0xFF0C1220) : const Color(0xFFE4E8F1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: QRSource.values.map((source) {
                final selected = value == source;
                final label = source == QRSource.scan ? S.of(context).scanned : S.of(context).generated;
                return Expanded(
                  child: GestureDetector(
                    onTap: () => onChanged(source),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 220),
                      curve: Curves.easeOutCubic,
                      padding: const EdgeInsets.symmetric(vertical: 11),
                      decoration: BoxDecoration(
                        gradient: selected ? AppColors.instance.gradient : null,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: selected
                            ? [
                                BoxShadow(
                                  color: AppColors.instance.lightPrimary.withOpacity(0.32),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                ),
                              ]
                            : null,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        label,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13.5,
                          color: selected
                              ? Colors.white
                              : Theme.of(context).disabledColor,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
