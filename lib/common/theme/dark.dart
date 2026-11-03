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

  final colors = AppColors.instance;

  return base.copyWith(
    brightness: Brightness.dark,
    primaryColor: colors.darkPrimary,
    scaffoldBackgroundColor: colors.darkBackground,
    canvasColor: colors.darkBackground,
    cardColor: colors.darkSurface,
    splashColor: colors.darkPrimary.withOpacity(0.12),
    highlightColor: colors.darkPrimary.withOpacity(0.06),
    dividerColor: const Color(0xFF1E293B),
    disabledColor: const Color(0xFF64748B),
    dialogBackgroundColor: colors.darkSurface,

    colorScheme: base.colorScheme.copyWith(
      brightness: Brightness.dark,
      primary: colors.darkPrimary,
      onPrimary: colors.darkOnPrimary,
      secondary: colors.darkSecondary,
      onSecondary: colors.darkOnSecondary,
      background: colors.darkBackground,
      onBackground: colors.darkOnBackground,
      surface: colors.darkSurface,
      onSurface: colors.darkOnSurface,
      error: colors.darkError,
      onError: colors.darkOnPrimary,
    ),

    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: colors.darkBackground,
      foregroundColor: colors.darkOnBackground,
      titleTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: AppDimensions.instance.fontsizeX(1.25) * scale,
        fontWeight: FontWeight.w700,
        color: colors.darkOnBackground,
      ),
      iconTheme: IconThemeData(
        color: colors.darkOnBackground,
        size: AppDimensions.instance.icon,
      ),
    ),

    cardTheme: CardThemeData(
      color: colors.darkSurface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.instance.radius),
      ),
      margin: EdgeInsets.zero,
    ),

    iconTheme: IconThemeData(
      color: colors.darkOnBackground,
      size: AppDimensions.instance.icon,
    ),

    textTheme: buildTextTheme(base.textTheme, scale: scale).apply(
      bodyColor: colors.darkOnBackground,
      displayColor: colors.darkOnBackground,
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF0F1524),
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
        borderSide: const BorderSide(color: Color(0xFF1E293B)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.instance.radiusX(0.7)),
        borderSide: BorderSide(color: colors.darkPrimary, width: 1.5),
      ),
    ),

    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: colors.darkPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.instance.radiusX(0.7)),
      ),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colors.darkPrimary,
      foregroundColor: colors.darkOnPrimary,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.instance.radius),
      ),
    ),
  );
}
