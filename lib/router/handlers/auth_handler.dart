import 'package:fluro/fluro.dart';
import 'package:trumed/features/auth/login/presentation/views/login_view.dart';

class AuthHandler {
  static Handler login = Handler(handlerFunc: (context, params) {
    return const LoginView();
  });
}
