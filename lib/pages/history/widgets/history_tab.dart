import 'package:flutter/material.dart';
import 'package:qr_scanner/common/constants.dart';
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
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.instance.padding),
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? const Color(0xFF0F1524)
                  : const Color(0xFFE8ECF4),
              borderRadius: BorderRadius.circular(AppDimensions.instance.radius),
            ),
            child: Row(
              children: QRSource.values.map((source) {
                final selected = value == source;
                final label = source == QRSource.scan ? 'Scanned' : 'Generated';
                return Expanded(
                  child: GestureDetector(
                    onTap: () => onChanged(source),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: EdgeInsets.symmetric(
                        vertical: AppDimensions.instance.paddingX(0.65),
                      ),
                      decoration: BoxDecoration(
                        gradient: selected ? AppColors.instance.gradient : null,
                        color: selected ? null : Colors.transparent,
                        borderRadius: BorderRadius.circular(
                          AppDimensions.instance.radiusX(0.85),
                        ),
                        boxShadow: selected
                            ? [
                                BoxShadow(
                                  color: AppColors.instance.lightPrimary.withOpacity(0.3),
                                  blurRadius: 10,
                                  offset: const Offset(0, 3),
                                ),
                              ]
                            : null,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        label,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w700,
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
