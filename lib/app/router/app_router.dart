import 'package:go_router/go_router.dart';

import '../../features/authentication/presentation/pages/login_page.dart';

import '../../features/home/presentation/pages/home_page.dart';
import '../../features/camera/presentation/pages/camera_page.dart';
import '../../features/authentication/presentation/pages/qr_scanner_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
  path: '/login',
  builder: (context, state) {
    return const LoginPage();
  },
  routes: [
    GoRoute(
      path: 'qr',
      builder: (context, state) {
        return const QrScannerPage();
      },
    ),
  ],
),
    GoRoute(
      path: '/home',
      builder:(context, state) {
        return const HomePage();

      },
     routes: [
        GoRoute(
          path: 'camera',
          builder: (context, state) {
            return const CameraPage();
          },
        ),
      ],
    ),
  ],
);
    
