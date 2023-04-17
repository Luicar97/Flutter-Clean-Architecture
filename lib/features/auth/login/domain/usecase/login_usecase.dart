import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trumed/core/error/failures.dart';
import 'package:trumed/features/auth/login/domain/entity/fact_entity.dart';
import 'package:trumed/features/auth/login/domain/repository/login_repository.dart';

@injectable
class LoginUserUseCase {
  final LoginRepository? _loginRepository;

  LoginUserUseCase(this._loginRepository);

  Future<Either<Failure, FactEntity?>> execute() async {
    return await _loginRepository!.loginUser();
  }
}
