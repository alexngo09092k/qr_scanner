import 'package:flutter/material.dart';

/// Dimmed overlay with a transparent cutout for the scan window.
class ScannerOverlay extends StatelessWidget {
  const ScannerOverlay({
    super.key,
    required this.scanWindow,
    this.borderRadius = 20,
    this.overlayColor = const Color(0x99000000),
  });

  final Rect scanWindow;
  final double borderRadius;
  final Color overlayColor;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: CustomPaint(
        size: MediaQuery.of(context).size,
        painter: _ScannerOverlayPainter(
          scanWindow: scanWindow,
          borderRadius: borderRadius,
          overlayColor: overlayColor,
        ),
      ),
    );
  }
}

class _ScannerOverlayPainter extends CustomPainter {
  _ScannerOverlayPainter({
    required this.scanWindow,
    required this.borderRadius,
    required this.overlayColor,
  });

  final Rect scanWindow;
  final double borderRadius;
  final Color overlayColor;

  @override
  void paint(Canvas canvas, Size size) {
    final background = Path()..addRect(Offset.zero & size);
    final cutout = Path()
      ..addRRect(
        RRect.fromRectAndRadius(scanWindow, Radius.circular(borderRadius)),
      );

    final path = Path.combine(PathOperation.difference, background, cutout);
    canvas.drawPath(path, Paint()..color = overlayColor);
  }

  @override
  bool shouldRepaint(covariant _ScannerOverlayPainter oldDelegate) {
    return oldDelegate.scanWindow != scanWindow ||
        oldDelegate.borderRadius != borderRadius ||
        oldDelegate.overlayColor != overlayColor;
  }
}
