import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../home/presentation/providers/home_provider.dart';

class CameraPage extends ConsumerWidget {
  const CameraPage({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ref
                .read(photoClickedProvider.notifier)
                .photoClicked();

            context.pop();
          },
          child: const Text('Take Photo'),
        ),
      ),
    );
  }
}