part of '../constants.dart';

class AppDimensions {
  static final AppDimensions _instance = AppDimensions._internal();
  static AppDimensions get instance => _instance;

  factory AppDimensions() => _instance;

  AppDimensions._internal();

  /// FONT SIZE
  final double fontsize = 14;
  double fontsizeX(double x) => fontsize * x;

  /// PADDING
  final double padding = 16;
  double paddingX(double x) => padding * x;

  /// RADIUS
  final double radius = 18;
  double radiusX(double x) => radius * x;

  /// ICON
  final double icon = 22;
  double iconX(double x) => icon * x;

  /// Bottom nav clearance
  final double bottomNavHeight = 72;

  /// GRID DELEGATE
  SliverGridDelegateWithFixedCrossAxisCount get gridDelegate =>
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: padding * 0.75,
        mainAxisSpacing: padding * 0.75,
        childAspectRatio: 0.92,
      );

  Size get gridItemSize => Size(
        (AwesomeAppState.screen.width - gridDelegate.crossAxisSpacing * 3) /
            gridDelegate.crossAxisCount,
        (AwesomeAppState.screen.width - gridDelegate.crossAxisSpacing * 3) /
            gridDelegate.crossAxisCount,
      );

  double get contentMaxWidth => AwesomeAppState.screen.width - padding * 2;
}
