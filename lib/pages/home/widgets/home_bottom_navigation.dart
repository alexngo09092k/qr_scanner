import 'package:flutter/material.dart';
import 'package:qr_scanner/common/constants.dart';
import 'package:qr_scanner/generated/l10n.dart';
import 'package:qr_scanner/models/home_navigation.dart';
import 'package:qr_scanner/widgets/base/custom_icon.dart';

class HomeBottomNavigation extends StatelessWidget {
  const HomeBottomNavigation({
    super.key,
    required this.navigation,
    required this.onChange,
    required this.current,
  });

  final HomeNavigation navigation;
  final Function(HomeNavigation) onChange;
  final HomeNavigation current;

  String _label(BuildContext context, HomeNavigation e) {
    final s = S.of(context);
    switch (e) {
      case HomeNavigation.scan:
        return s.scan;
      case HomeNavigation.history:
        return s.history;
      case HomeNavigation.generate:
        return s.generate;
      case HomeNavigation.settings:
        return s.settings;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final surface = Theme.of(context).colorScheme.surface;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppDimensions.instance.paddingX(1.1),
        0,
        AppDimensions.instance.paddingX(1.1),
        AppDimensions.instance.paddingX(0.85),
      ),
      child: Container(
        height: AppDimensions.instance.bottomNavHeight,
        decoration: BoxDecoration(
          color: surface.withOpacity(isDark ? 0.92 : 0.96),
          borderRadius: BorderRadius.circular(28),
          boxShadow: [AppColors.instance.navShadow],
          border: Border.all(
            color: isDark ? const Color(0xFF1C2436) : const Color(0xFFE8ECF4),
          ),
        ),
        child: Row(
          children: HomeNavigation.values.map((e) {
            final selected = current == e;
            return Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => onChange(e),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 240),
                  curve: Curves.easeOutCubic,
                  margin: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    gradient: selected ? AppColors.instance.gradient : null,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: selected
                        ? [
                            BoxShadow(
                              color: AppColors.instance.lightPrimary.withOpacity(0.4),
                              blurRadius: 14,
                              offset: const Offset(0, 5),
                            ),
                          ]
                        : null,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIcon(
                        e.icon,
                        color: selected ? Colors.white : Theme.of(context).disabledColor,
                        size: 22,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        _label(context, e),
                        style: TextStyle(
                          fontSize: 10.5,
                          fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                          color: selected ? Colors.white : Theme.of(context).disabledColor,
                          letterSpacing: 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
