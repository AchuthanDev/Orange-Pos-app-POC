import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../providers/auth_provider.dart';

class QrScannerPage extends ConsumerStatefulWidget {
  const QrScannerPage({super.key});

  @override
  ConsumerState<QrScannerPage> createState() {
    return _QrScannerPageState();
  }
}

class _QrScannerPageState
    extends ConsumerState<QrScannerPage> {

  bool _hasScanned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR Code'),
      ),
      body: MobileScanner(
        onDetect: (capture) {
          if (_hasScanned) {
            return;
          }

          final qrData =
              capture.barcodes.first.rawValue;

          if (qrData == null) {
            return;
          }

          _hasScanned = true;

          ref
              .read(authProvider.notifier)
              .loginWithQr(qrData);

          context.go('/home');
        },
      ),
    );
  }
}