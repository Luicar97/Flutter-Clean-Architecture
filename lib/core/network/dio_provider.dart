import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:trumed/core/network/config.dart';

@module
abstract class DioProvider {
  @singleton
  Dio dio(IConfig config) {
    Dio dio = Dio();
    dio.options.headers = config.headers;
    return dio;
  }
}
