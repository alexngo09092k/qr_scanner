import 'package:flutter/material.dart';
import 'package:fluttering/fluttering.dart';
import 'package:qr_scanner/common/app_routes.dart';
import 'package:qr_scanner/common/constants.dart';
import 'package:qr_scanner/providers/history_provider.dart';
import 'package:qr_scanner/providers/scanner_provider.dart';

class ScannerResult extends StatefulWidget {
  const ScannerResult({super.key});

  @override
  State<ScannerResult> createState() => _ScannerResultState();
}

class _ScannerResultState extends ProviderStateful<ScannerResult, ScannerProvider> {
  void _openLatest() {
    final history = HistoryProvider.instance.scanHistory;
    if (history.isEmpty) return;
    // most recent is typically last added
    final qr = history.last;
    Navigator.of(context).pushNamed(AppRoutes.viewerPage, arguments: qr);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: provider.barcodeCapture,
      builder: (_, capture, __) {
        if (capture.barcodes.isEmpty) {
          return const SizedBox();
        }

        final count = HistoryProvider.instance.scanHistory.length;
        final hasImage = capture.image != null;

        return GestureDetector(
          onTap: _openLatest,
          child: Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(AppDimensions.instance.radius),
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 2,
              ),
            ),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              fit: StackFit.expand,
              children: [
                if (hasImage)
                  Image.memory(
                    capture.image!,
                    fit: BoxFit.cover,
                  )
                else
                  Icon(
                    Icons.qr_code_2,
                    color: Theme.of(context).colorScheme.primary,
                    size: 32,
                  ),
                if (count > 0)
                  Positioned(
                    right: 4,
                    top: 4,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        count > 99 ? '99+' : '$count',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
