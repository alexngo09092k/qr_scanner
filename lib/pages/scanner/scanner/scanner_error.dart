import 'package:flutter/material.dart';
import 'package:qr_scanner/generated/l10n.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerError extends StatelessWidget {
  const ScannerError({Key? key, required this.error}) : super(key: key);

  final MobileScannerException error;

  @override
  Widget build(BuildContext context) {
    String errorMessage;

    switch (error.errorCode) {
      case MobileScannerErrorCode.controllerUninitialized:
        errorMessage = S.of(context).controllerNotReady;
        break;
      case MobileScannerErrorCode.permissionDenied:
        errorMessage = S.of(context).permissionDenied;
        break;
      case MobileScannerErrorCode.unsupported:
        errorMessage = S.of(context).scanningUnsupported;
        break;
      default:
        errorMessage = S.of(context).genericError;
        break;
    }

    return ColoredBox(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Icon(Icons.error, color: Colors.white),
            ),
            Text(
              errorMessage,
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              error.errorDetails?.message ?? '',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
