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

  final colors = AppColors.instance;

  return base.copyWith(
    brightness: Brightness.light,
    primaryColor: colors.lightPrimary,
    scaffoldBackgroundColor: colors.lightBackground,
    canvasColor: colors.lightBackground,
    cardColor: colors.lightSurface,
    splashColor: colors.lightPrimary.withOpacity(0.08),
    highlightColor: colors.lightPrimary.withOpacity(0.05),
    dividerColor: const Color(0xFFE2E8F0),
    disabledColor: const Color(0xFF94A3B8),
    dialogBackgroundColor: colors.lightSurface,

    colorScheme: base.colorScheme.copyWith(
      brightness: Brightness.light,
      primary: colors.lightPrimary,
      onPrimary: colors.lightOnPrimary,
      secondary: colors.lightSecondary,
      onSecondary: colors.lightOnSecondary,
      background: colors.lightBackground,
      onBackground: colors.lightOnBackground,
      surface: colors.lightSurface,
      onSurface: colors.lightOnSurface,
      error: colors.lightError,
      onError: colors.lightOnPrimary,
    ),

    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: colors.lightBackground,
      foregroundColor: colors.lightOnBackground,
      titleTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: AppDimensions.instance.fontsizeX(1.25) * scale,
        fontWeight: FontWeight.w700,
        color: colors.lightOnBackground,
      ),
      iconTheme: IconThemeData(
        color: colors.lightOnBackground,
        size: AppDimensions.instance.icon,
      ),
    ),

    cardTheme: CardThemeData(
      color: colors.lightSurface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.instance.radius),
      ),
      margin: EdgeInsets.zero,
    ),

    iconTheme: IconThemeData(
      color: colors.lightOnBackground,
      size: AppDimensions.instance.icon,
    ),

    textTheme: buildTextTheme(base.textTheme, scale: scale).apply(
      bodyColor: colors.lightOnBackground,
      displayColor: colors.lightOnBackground,
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colors.lightBackground,
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppDimensions.instance.padding,
        vertical: AppDimensions.instance.paddingX(0.85),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.instance.radiusX(0.7)),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.instance.radiusX(0.7)),
        borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.instance.radiusX(0.7)),
        borderSide: BorderSide(color: colors.lightPrimary, width: 1.5),
      ),
    ),

    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: colors.lightPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.instance.radiusX(0.7)),
      ),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colors.lightPrimary,
      foregroundColor: colors.lightOnPrimary,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.instance.radius),
      ),
    ),
  );
}
