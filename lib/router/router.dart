import 'package:fluro/fluro.dart';
import 'package:trumed/router/handlers/auth_handler.dart';
import 'package:trumed/router/handlers/not_page_found_handler.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootLogin = '/login';

  static void configureRoutes() {
    router.define(rootLogin,
        handler: AuthHandler.login, transitionType: TransitionType.none);

    router.notFoundHandler = NotPageFoundHandler.notFoundHandler;
  }
}
