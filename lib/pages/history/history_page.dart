import 'package:flutter/material.dart';
import 'package:fluttering/fluttering.dart';
import 'package:qr_scanner/common/constants.dart';
import 'package:qr_scanner/models/qr_source.dart';
import 'package:qr_scanner/pages/history/widgets/history_list.dart';
import 'package:qr_scanner/pages/history/widgets/history_tab.dart';
import 'package:qr_scanner/providers/history_provider.dart';
import 'package:qr_scanner/utils/widget.dart';
import 'package:qr_scanner/widgets/app_use/app_layout.dart';
import 'package:qr_scanner/widgets/base/custom_alert.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends ProviderStateObserver<HistoryPage, HistoryProvider> {
  final ValueNotifier<QRSource> _tab = ValueNotifier(QRSource.scan);
  late final PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: _tab.value.index);
    _controller.addListener(() {
      if (_controller.page == null) return;
      if (_tab.value.index != _controller.page!.round()) {
        _tab.value = QRSource.values[_controller.page!.round()];
      }
    });
    super.initState();
  }

  @override
  void onNextFrame(Duration timestamp) {
    if (provider.scanHistory.isEmpty && provider.generateHistory.isNotEmpty) {
      _onChanged(QRSource.generate);
    }
    super.onNextFrame(timestamp);
  }

  void _onChanged(tab) {
    _tab.value = tab;
    _controller.animateToPage(
      tab.index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  void _clearAll(BuildContext context) {
    final isEmpty = provider.scanHistory.isEmpty && provider.generateHistory.isEmpty;
    if (isEmpty) {
      WidgetUtils.instance.snack(message: 'History is already empty');
      return;
    }
    WidgetUtils.instance.alert(
      context,
      title: 'Clear history?',
      message: 'This will delete all scanned and generated QR codes.',
      actions: [
        AlertAction(
          title: 'Cancel',
          onPressed: () => Navigator.of(context).pop(),
        ),
        AlertAction(
          title: 'Clear',
          isDestructiveAction: true,
          onPressed: () async {
            await provider.cleanToStorage(true);
            Navigator.of(context).pop();
            WidgetUtils.instance.snack(message: 'History cleared');
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      screen: "History",
      appBar: true,
      back: false,
      action: GestureDetector(
        onTap: () => _clearAll(context),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.instance.padding),
          child: Text(
            'Clear',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
      children: [
        HistoryTab(
          tab: _tab,
          onChanged: _onChanged,
        ),
        SizedBox(height: AppDimensions.instance.padding),
        Expanded(
          child: PageView(
            controller: _controller,
            children: QRSource.values.map((e) => HistoryList(e)).toList(),
          ),
        )
      ],
    );
  }
}
