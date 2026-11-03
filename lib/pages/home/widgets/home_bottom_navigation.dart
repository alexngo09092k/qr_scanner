import 'package:flutter/material.dart';
import 'package:qr_scanner/common/constants.dart';
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

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final surface = Theme.of(context).colorScheme.surface;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppDimensions.instance.padding,
        0,
        AppDimensions.instance.padding,
        AppDimensions.instance.paddingX(0.75),
      ),
      child: Container(
        height: AppDimensions.instance.bottomNavHeight,
        decoration: BoxDecoration(
          color: surface,
          borderRadius: BorderRadius.circular(AppDimensions.instance.radiusX(1.4)),
          boxShadow: [AppColors.instance.navShadow],
          border: Border.all(
            color: isDark ? const Color(0xFF1E293B) : const Color(0xFFE8ECF4),
            width: 1,
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
                  duration: const Duration(milliseconds: 220),
                  curve: Curves.easeOutCubic,
                  margin: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    gradient: selected ? AppColors.instance.gradient : null,
                    color: selected ? null : Colors.transparent,
                    borderRadius: BorderRadius.circular(AppDimensions.instance.radius),
                    boxShadow: selected
                        ? [
                            BoxShadow(
                              color: AppColors.instance.lightPrimary.withOpacity(0.35),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ]
                        : null,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIcon(
                        e.icon,
                        color: selected
                            ? Colors.white
                            : Theme.of(context).disabledColor,
                        size: AppDimensions.instance.iconX(1.05),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        e.label,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                              color: selected
                                  ? Colors.white
                                  : Theme.of(context).disabledColor,
                              fontSize: 11,
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
