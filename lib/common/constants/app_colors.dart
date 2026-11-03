part of '../constants.dart';

class AppColors extends FlutteringColors {
  static final AppColors _instance = AppColors._internal();
  static AppColors get instance => _instance;
  factory AppColors() => _instance;
  AppColors._internal();

  // Brand — deep indigo + electric violet + aqua
  @override
  Color get lightPrimary => const Color(0xFF4F46E5);
  @override
  Color get lightSecondary => const Color(0xFF06B6D4);
  @override
  Color get lightBackground => const Color(0xFFF0F2F8);
  @override
  Color get lightSurface => const Color(0xFFFFFFFF);
  @override
  Color get lightOnBackground => const Color(0xFF0B1220);
  @override
  Color get lightOnSurface => const Color(0xFF1A2336);
  @override
  Color get lightOnPrimary => const Color(0xFFFFFFFF);
  @override
  Color get lightOnSecondary => const Color(0xFF0B1220);
  @override
  Color get lightError => const Color(0xFFE11D48);

  @override
  Color get darkPrimary => const Color(0xFF818CF8);
  @override
  Color get darkSecondary => const Color(0xFF22D3EE);
  @override
  Color get darkBackground => const Color(0xFF070B14);
  @override
  Color get darkSurface => const Color(0xFF121826);
  @override
  Color get darkOnBackground => const Color(0xFFE8EEF8);
  @override
  Color get darkOnSurface => const Color(0xFFF1F5FF);
  @override
  Color get darkOnPrimary => const Color(0xFFFFFFFF);
  @override
  Color get darkOnSecondary => const Color(0xFF070B14);
  @override
  Color get darkError => const Color(0xFFFB7185);

  /// Hero / CTA gradient
  LinearGradient get gradient => const LinearGradient(
        begin: Alignment(-1, -1),
        end: Alignment(1, 1),
        colors: [Color(0xFF4F46E5), Color(0xFF7C3AED), Color(0xFF06B6D4)],
        stops: [0.0, 0.5, 1.0],
      );

  LinearGradient get gradientVertical => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFF4F46E5), Color(0xFF7C3AED)],
      );

  LinearGradient get gradientSoft => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0xFF4F46E5).withOpacity(0.14),
          const Color(0xFF06B6D4).withOpacity(0.10),
        ],
      );

  LinearGradient get splashGradient => const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF1E1B4B), Color(0xFF4F46E5), Color(0xFF0E7490)],
      );

  BoxShadow get boxShadow => BoxShadow(
        color: const Color(0xFF4F46E5).withOpacity(0.12),
        offset: const Offset(0, 10),
        blurRadius: 28,
        spreadRadius: -6,
      );

  BoxShadow get boxShadowSoft => BoxShadow(
        color: const Color(0xFF0B1220).withOpacity(0.06),
        offset: const Offset(0, 6),
        blurRadius: 20,
        spreadRadius: -4,
      );

  BoxShadow get navShadow => BoxShadow(
        color: const Color(0xFF4F46E5).withOpacity(0.16),
        offset: const Offset(0, 12),
        blurRadius: 32,
        spreadRadius: -6,
      );

  BoxShadow get glowPrimary => BoxShadow(
        color: const Color(0xFF4F46E5).withOpacity(0.35),
        offset: const Offset(0, 8),
        blurRadius: 24,
      );
}
