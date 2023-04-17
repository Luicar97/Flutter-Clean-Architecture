import 'package:dartz/dartz.dart';
import 'package:trumed/core/error/failures.dart';
import 'package:trumed/features/auth/login/domain/entity/fact_entity.dart';

abstract class LoginRepository {
  Future<Either<Failure, FactEntity?>> loginUser();
}
