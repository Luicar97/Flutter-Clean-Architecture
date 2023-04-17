import 'package:flutter/material.dart';
import 'package:trumed/app.dart';
import 'package:trumed/core/di/injector.dart';
import 'package:trumed/features/auth/login/presentation/views/login_view.dart';
import 'package:trumed/router/router.dart';
import 'package:trumed/services/navigation_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flurorouter.configureRoutes();
  configureDependencies();
  runApp(const AppView());
}
