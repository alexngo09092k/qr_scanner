part of '../constants.dart';

class AppColors extends FlutteringColors {
  static final AppColors _instance = AppColors._internal();
  static AppColors get instance => _instance;

  factory AppColors() => _instance;

  AppColors._internal();

  // —— Brand ——
  // Indigo primary + cyan secondary for a modern scanner feel
  @override
  Color get lightPrimary => const Color(0xFF5B5FFF);

  @override
  Color get lightSecondary => const Color(0xFF22D3EE);

  @override
  Color get lightBackground => const Color(0xFFF3F5FB);

  @override
  Color get lightSurface => const Color(0xFFFFFFFF);

  @override
  Color get lightOnBackground => const Color(0xFF0F172A);

  @override
  Color get lightOnSurface => const Color(0xFF1E293B);

  @override
  Color get lightOnPrimary => const Color(0xFFFFFFFF);

  @override
  Color get lightOnSecondary => const Color(0xFF0F172A);

  @override
  Color get lightError => const Color(0xFFEF4444);

  @override
  Color get darkPrimary => const Color(0xFF818CF8);

  @override
  Color get darkSecondary => const Color(0xFF22D3EE);

  @override
  Color get darkBackground => const Color(0xFF0B0F1A);

  @override
  Color get darkSurface => const Color(0xFF151B2B);

  @override
  Color get darkOnBackground => const Color(0xFFE2E8F0);

  @override
  Color get darkOnSurface => const Color(0xFFF1F5F9);

  @override
  Color get darkOnPrimary => const Color(0xFFFFFFFF);

  @override
  Color get darkOnSecondary => const Color(0xFF0F172A);

  @override
  Color get darkError => const Color(0xFFF87171);

  /// Soft brand gradient (buttons, premium, accents)
  LinearGradient get gradient => const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF5B5FFF), Color(0xFF7C3AED), Color(0xFF22D3EE)],
        stops: [0.0, 0.55, 1.0],
      );

  LinearGradient get gradientSoft => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          lightPrimary.withOpacity(0.12),
          lightSecondary.withOpacity(0.10),
        ],
      );

  BoxShadow get boxShadow => BoxShadow(
        color: const Color(0xFF5B5FFF).withOpacity(0.10),
        offset: const Offset(0, 8),
        blurRadius: 24,
        spreadRadius: -4,
      );

  BoxShadow get boxShadowSoft => BoxShadow(
        color: black.withOpacity(0.06),
        offset: const Offset(0, 4),
        blurRadius: 16,
        spreadRadius: -2,
      );

  BoxShadow get navShadow => BoxShadow(
        color: const Color(0xFF5B5FFF).withOpacity(0.12),
        offset: const Offset(0, 8),
        blurRadius: 28,
        spreadRadius: -4,
      );
}
