import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/login_header.dart';
import '../widgets/qr_login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LoginHeader(),

            const SizedBox(height: 24),

            QrLoginButton(
              onPressed: () {
                context.push('/login/qr');
              },
            ),
          ],
        ),
      ),
    );
  }
}