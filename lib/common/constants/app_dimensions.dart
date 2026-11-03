part of '../constants.dart';

class AppDimensions {
  static final AppDimensions _instance = AppDimensions._internal();
  static AppDimensions get instance => _instance;
  factory AppDimensions() => _instance;
  AppDimensions._internal();

  final double fontsize = 14;
  double fontsizeX(double x) => fontsize * x;

  final double padding = 16;
  double paddingX(double x) => padding * x;

  final double radius = 20;
  double radiusX(double x) => radius * x;

  final double icon = 22;
  double iconX(double x) => icon * x;

  final double bottomNavHeight = 74;

  SliverGridDelegateWithFixedCrossAxisCount get gridDelegate =>
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.88,
      );

  Size get gridItemSize => Size(
        (AwesomeAppState.screen.width - gridDelegate.crossAxisSpacing * 3) /
            gridDelegate.crossAxisCount,
        (AwesomeAppState.screen.width - gridDelegate.crossAxisSpacing * 3) /
            gridDelegate.crossAxisCount,
      );

  double get contentMaxWidth => AwesomeAppState.screen.width - padding * 2;
}
