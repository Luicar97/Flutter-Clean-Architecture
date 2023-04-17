import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:trumed/core/error/failures.dart';
import 'package:trumed/core/network/config.dart';
import 'package:trumed/core/network/network_info.dart';
import 'package:trumed/core/repository/chooser.dart';
import 'package:trumed/features/auth/login/data/datasource/login_datasource.dart';
import 'package:trumed/features/auth/login/data/models/fact_model.dart';
import 'package:trumed/features/auth/login/domain/entity/fact_entity.dart';
import 'package:trumed/features/auth/login/domain/repository/login_repository.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final Dio dio;
  final IConfig config;
  final NetworkInfo networkInfo;
  final LoginRemoteDataSource loginRemoteDataSource;

  LoginRepositoryImpl({
    required this.dio,
    required this.config,
    required this.networkInfo,
  }) : loginRemoteDataSource =
            LoginRemoteDataSource(dio, baseUrl: config.baseUrl);

  @override
  Future<Either<Failure, FactEntity?>> loginUser() {
    return _loginUserOrFail(
      () => loginRemoteDataSource.loginUser(),
    );
  }

  Future<Either<Failure, FactEntity?>> _loginUserOrFail(
    Chooser getChooser,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteLogin = await getChooser() as FactModel;

        return Right(toEntityFactModel(remoteLogin));
      } on Exception {
        return Left(GeneralFailure());
      }
    } else {
      return Left(GeneralFailure());
    }
  }
}
