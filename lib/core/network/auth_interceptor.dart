import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor({required this.preferences});
  final SharedPreferences preferences;
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = preferences.getString('token');
    if (token == null) {
      return handler.next(options);
    }
    options.headers['Authorization'] = 'Token $token';
    return handler.next(options);
  }
}
