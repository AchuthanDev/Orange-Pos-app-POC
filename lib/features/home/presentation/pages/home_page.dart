import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../authentication/presentation/providers/auth_provider.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/login_session_view.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final session = ref.watch(authProvider);

    return Scaffold(
      appBar: HomeAppBar(
        onLogout: () {
          ref
              .read(authProvider.notifier)
              .logout();

          context.go('/login');
        },
      ),
      body: LoginSessionView(
        qrData: session?.qrdata,
      ),
    );
  }
}