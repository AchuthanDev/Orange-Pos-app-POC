import '../entities/login_session.dart';

class LoginWithQr {
  LoginSession call(String qrData) {
    return LoginSession(
      qrData: qrData,
    );
  }
}