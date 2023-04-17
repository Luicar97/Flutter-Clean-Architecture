import 'package:flutter/widgets.dart';

class NavigationServices {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static navigateTo(
      {required String routeName, Map<String, dynamic>? arguments}) {
    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  static replaceTo(String routeName) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  static navigatePop() {
    return navigatorKey.currentState!.pop();
  }
}
