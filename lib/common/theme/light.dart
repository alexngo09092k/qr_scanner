part of '../theme.dart';

ThemeData getLightTheme(BuildContext context, {double scale = 1}) {
  final base = ThemeData.light().copyWith(
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
    brightness: Brightness.light,
    primaryColor: c.lightPrimary,
    scaffoldBackgroundColor: c.lightBackground,
    canvasColor: c.lightBackground,
    cardColor: c.lightSurface,
    splashColor: c.lightPrimary.withOpacity(0.08),
    highlightColor: c.lightPrimary.withOpacity(0.04),
    dividerColor: const Color(0xFFE4E8F1),
    disabledColor: const Color(0xFF94A3B8),
    dialogBackgroundColor: c.lightSurface,
    colorScheme: base.colorScheme.copyWith(
      brightness: Brightness.light,
      primary: c.lightPrimary,
      onPrimary: c.lightOnPrimary,
      secondary: c.lightSecondary,
      onSecondary: c.lightOnSecondary,
      background: c.lightBackground,
      onBackground: c.lightOnBackground,
      surface: c.lightSurface,
      onSurface: c.lightOnSurface,
      error: c.lightError,
      onError: c.lightOnPrimary,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      backgroundColor: c.lightBackground,
      foregroundColor: c.lightOnBackground,
      titleTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: d.fontsizeX(1.2) * scale,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.2,
        color: c.lightOnBackground,
      ),
      iconTheme: IconThemeData(color: c.lightOnBackground, size: d.icon),
    ),
    cardTheme: CardThemeData(
      color: c.lightSurface,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(d.radius),
      ),
    ),
    iconTheme: IconThemeData(color: c.lightOnBackground, size: d.icon),
    textTheme: buildTextTheme(base.textTheme, scale: scale).apply(
      bodyColor: c.lightOnBackground,
      displayColor: c.lightOnBackground,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFFF7F8FC),
      contentPadding: EdgeInsets.symmetric(
        horizontal: d.padding,
        vertical: d.paddingX(0.9),
      ),
      hintStyle: TextStyle(
        color: const Color(0xFF94A3B8),
        fontSize: d.fontsize * scale,
        fontWeight: FontWeight.w400,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(d.radiusX(0.75)),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(d.radiusX(0.75)),
        borderSide: const BorderSide(color: Color(0xFFE8ECF4)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(d.radiusX(0.75)),
        borderSide: BorderSide(color: c.lightPrimary, width: 1.6),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: c.lightPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(d.radiusX(0.7)),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: c.lightPrimary,
      foregroundColor: c.lightOnPrimary,
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(d.radius),
      ),
    ),
  );
}
