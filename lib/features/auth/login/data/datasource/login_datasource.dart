import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trumed/features/auth/login/data/models/fact_model.dart';

part 'login_datasource.g.dart';

@RestApi(baseUrl: "https://catfact.ninja/")
abstract class LoginRemoteDataSource {
  factory LoginRemoteDataSource(Dio dio, {String baseUrl}) =
      _LoginRemoteDataSource;

  @GET("/fact")
  Future<FactModel> loginUser();
}
