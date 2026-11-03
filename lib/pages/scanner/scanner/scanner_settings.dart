// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:fluttering/fluttering.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_scanner/common/constants.dart';
import 'package:qr_scanner/providers/scanner_provider.dart';
import 'package:qr_scanner/widgets/base/custom_icon.dart';

class ScannerSettings extends ProviderStateless<ScannerProvider> {
  ScannerSettings({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          _ZooomSlider(provider.controller.zoomScaleState, provider.onZoom),
          SizedBox(height: AppDimensions.instance.paddingX(0.85)),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.white.withOpacity(0.14)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 24,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _SettingButton(
                  'Gallery',
                  icon: AppAssets.instance.icGallery,
                  onPressed: provider.onGallery,
                ),
                ValueListenableBuilder(
                  valueListenable: provider.controller.torchState,
                  builder: (_, state, __) => _SettingButton(
                    'Flash',
                    icon: AppAssets.instance.icFlashOn,
                    onPressed: provider.onFlashlight,
                    active: state == TorchState.on,
                  ),
                ),
                ValueListenableBuilder(
                  valueListenable: provider.controller.cameraFacingState,
                  builder: (_, state, __) => _SettingButton(
                    'Flip',
                    icon: AppAssets.instance.icFlipCamera,
                    onPressed: provider.onCameraFacing,
                    active: state == CameraFacing.front,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ZooomSlider extends StatelessWidget {
  const _ZooomSlider(this.zoomState, this.onZoom);

  final Function(double) onZoom;
  final ValueNotifier<double> zoomState;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.35),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: Row(
        children: [
          CustomIcon(AppAssets.instance.icZoomOut, color: Colors.white70, size: 16),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: zoomState,
              builder: (_, state, __) => SliderTheme(
                data: SliderThemeData(
                  thumbColor: Theme.of(context).colorScheme.primary,
                  activeTrackColor: Theme.of(context).colorScheme.primary,
                  inactiveTrackColor: Colors.white24,
                  trackHeight: 3,
                  thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 7),
                  overlayShape: const RoundSliderOverlayShape(overlayRadius: 14),
                  trackShape: CustomTrackShape(),
                ),
                child: Slider(
                  value: (state * 100).clamp(0, 100),
                  min: 0,
                  max: 100,
                  onChanged: (v) => onZoom(v / 100),
                ),
              ),
            ),
          ),
          CustomIcon(AppAssets.instance.icZoomIn, color: Colors.white70, size: 16),
        ],
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight ?? 2;
    final trackLeft = offset.dx + 8;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;
    final trackWidth = parentBox.size.width - 16;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

class _SettingButton extends StatelessWidget {
  const _SettingButton(
    this.label, {
    required this.icon,
    required this.onPressed,
    this.active = false,
  });

  final String label;
  final String icon;
  final VoidCallback onPressed;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          gradient: active ? AppColors.instance.gradient : null,
          color: active ? null : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomIcon(icon, color: Colors.white, size: 22),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
