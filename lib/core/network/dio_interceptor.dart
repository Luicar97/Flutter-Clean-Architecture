import 'package:dio/dio.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:trumed/core/network/auth_interceptor.dart';

class DioInterceptor {
  DioInterceptor({required this.dio, required this.authInterceptor});
  final Dio dio;
  final AuthInterceptor authInterceptor;
  void addLogger() {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
  }

  void addToken() {
    dio.interceptors.add(
      authInterceptor,
    );
  }
}
