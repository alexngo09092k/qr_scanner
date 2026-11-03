part of '../theme.dart';

ThemeData getDarkTheme(BuildContext context, {double scale = 1}) {
  final base = ThemeData.dark().copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
  final c = AppColors.instance;
  final d = AppDimensions.instance;

  return base.copyWith(
    brightness: Brightness.dark,
    primaryColor: c.darkPrimary,
    scaffoldBackgroundColor: c.darkBackground,
    canvasColor: c.darkBackground,
    cardColor: c.darkSurface,
    splashColor: c.darkPrimary.withOpacity(0.12),
    highlightColor: c.darkPrimary.withOpacity(0.06),
    dividerColor: const Color(0xFF1C2436),
    disabledColor: const Color(0xFF64748B),
    dialogBackgroundColor: c.darkSurface,
    colorScheme: base.colorScheme.copyWith(
      brightness: Brightness.dark,
      primary: c.darkPrimary,
      onPrimary: c.darkOnPrimary,
      secondary: c.darkSecondary,
      onSecondary: c.darkOnSecondary,
      background: c.darkBackground,
      onBackground: c.darkOnBackground,
      surface: c.darkSurface,
      onSurface: c.darkOnSurface,
      error: c.darkError,
      onError: c.darkOnPrimary,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      backgroundColor: c.darkBackground,
      foregroundColor: c.darkOnBackground,
      titleTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: d.fontsizeX(1.2) * scale,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.2,
        color: c.darkOnBackground,
      ),
      iconTheme: IconThemeData(color: c.darkOnBackground, size: d.icon),
    ),
    cardTheme: CardThemeData(
      color: c.darkSurface,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(d.radius),
      ),
    ),
    iconTheme: IconThemeData(color: c.darkOnBackground, size: d.icon),
    textTheme: buildTextTheme(base.textTheme, scale: scale).apply(
      bodyColor: c.darkOnBackground,
      displayColor: c.darkOnBackground,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF0C1220),
      contentPadding: EdgeInsets.symmetric(
        horizontal: d.padding,
        vertical: d.paddingX(0.9),
      ),
      hintStyle: TextStyle(
        color: const Color(0xFF64748B),
        fontSize: d.fontsize * scale,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(d.radiusX(0.75)),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(d.radiusX(0.75)),
        borderSide: const BorderSide(color: Color(0xFF1C2436)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(d.radiusX(0.75)),
        borderSide: BorderSide(color: c.darkPrimary, width: 1.6),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: c.darkPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(d.radiusX(0.7)),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: c.darkPrimary,
      foregroundColor: c.darkOnPrimary,
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(d.radius),
      ),
    ),
  );
}
