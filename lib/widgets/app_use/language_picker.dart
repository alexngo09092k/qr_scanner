import 'package:flutter/material.dart';
import 'package:fluttering/fluttering.dart';
import 'package:qr_scanner/common/constants.dart';
import 'package:qr_scanner/generated/l10n.dart';

class AppLanguage {
  const AppLanguage({
    required this.locale,
    required this.flag,
    required this.nameKey,
  });

  final Locale locale;
  final String flag;
  final String Function(S s) nameKey;

  static List<AppLanguage> get all => [
        AppLanguage(
          locale: const Locale('en'),
          flag: '🇬🇧',
          nameKey: (s) => s.langEnglish,
        ),
        AppLanguage(
          locale: const Locale('vi'),
          flag: '🇻🇳',
          nameKey: (s) => s.langVietnamese,
        ),
        AppLanguage(
          locale: const Locale('th'),
          flag: '🇹🇭',
          nameKey: (s) => s.langThai,
        ),
        AppLanguage(
          locale: const Locale('zh'),
          flag: '🇨🇳',
          nameKey: (s) => s.langChinese,
        ),
      ];

  static AppLanguage fromLocale(Locale locale) {
    return all.firstWhere(
      (e) => e.locale.languageCode == locale.languageCode,
      orElse: () => all.first,
    );
  }
}

class LanguagePicker {
  static Future<void> show(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final s = S.of(context);
    final provider = ManagerProvider.of<IThemeProvider>();
    final current = provider.locale;

    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) {
        return Container(
          margin: const EdgeInsets.fromLTRB(12, 0, 12, 16),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(isDark ? 0.45 : 0.12),
                blurRadius: 28,
                offset: const Offset(0, 10),
              ),
            ],
            border: Border.all(
              color: isDark ? const Color(0xFF1C2436) : const Color(0xFFE8ECF4),
            ),
          ),
          child: SafeArea(
            top: false,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                AppDimensions.instance.padding,
                12,
                AppDimensions.instance.padding,
                AppDimensions.instance.padding,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: theme.disabledColor.withOpacity(0.35),
                      borderRadius: BorderRadius.circular(99),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          gradient: AppColors.instance.gradientSoft,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        alignment: Alignment.center,
                        child: const Text('🌐', style: TextStyle(fontSize: 20)),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              s.chooseLanguage,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.2,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              s.language,
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.disabledColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  ...AppLanguage.all.map((lang) {
                    final selected =
                        lang.locale.languageCode == current.languageCode;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(18),
                          onTap: () {
                            provider.changeLocale(lang.locale);
                            Navigator.of(ctx).pop();
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 220),
                            curve: Curves.easeOutCubic,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 14,
                            ),
                            decoration: BoxDecoration(
                              gradient: selected
                                  ? AppColors.instance.gradient
                                  : null,
                              color: selected
                                  ? null
                                  : (isDark
                                      ? const Color(0xFF121826)
                                      : const Color(0xFFF3F5FA)),
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: selected
                                    ? Colors.transparent
                                    : (isDark
                                        ? const Color(0xFF1C2436)
                                        : const Color(0xFFE5E9F2)),
                              ),
                              boxShadow: selected
                                  ? [
                                      BoxShadow(
                                        color: AppColors.instance.lightPrimary
                                            .withOpacity(0.35),
                                        blurRadius: 16,
                                        offset: const Offset(0, 6),
                                      ),
                                    ]
                                  : null,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 44,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: selected
                                        ? Colors.white.withOpacity(0.18)
                                        : (isDark
                                            ? const Color(0xFF1A2233)
                                            : Colors.white),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    lang.flag,
                                    style: const TextStyle(fontSize: 22),
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Expanded(
                                  child: Text(
                                    lang.nameKey(s),
                                    style: theme.textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: selected
                                          ? Colors.white
                                          : theme.colorScheme.onSurface,
                                      letterSpacing: -0.1,
                                    ),
                                  ),
                                ),
                                if (selected)
                                  Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.22),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.check_rounded,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                  )
                                else
                                  Icon(
                                    Icons.chevron_right_rounded,
                                    size: 20,
                                    color: theme.disabledColor,
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                  const SizedBox(height: 4),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
