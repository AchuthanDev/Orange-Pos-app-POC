import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/login_session.dart';
import '../../domain/usecases/login_with_qr.dart';

final loginWithQrProvider = Provider<LoginWithQr>((ref) {
  return LoginWithQr();
});

final authProvider =
    NotifierProvider<AuthNotifier, LoginSession?>(
  AuthNotifier.new,
);


class AuthNotifier extends Notifier<LoginSession?>{
  @override
  LoginSession? build() {
    return null;
  }


 void loginWithQr(String qrData) {
    final loginWithQr = ref.read(
      loginWithQrProvider,
    );

    state = loginWithQr(qrData);
}

void logout(){
  state = null;
}
}
