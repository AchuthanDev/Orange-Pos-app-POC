import 'package:flutter/material.dart';

class LoginSessionView extends StatelessWidget {
  const LoginSessionView({
    required this.qrData,
    super.key,
  });

  final String? qrData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        qrData == null
            ? 'No Login Session'
            : 'QR Data: $qrData',
      ),
    );
  }
}