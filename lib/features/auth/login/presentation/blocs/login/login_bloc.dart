import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trumed/features/auth/login/data/models/fact_model.dart';
import 'package:trumed/features/auth/login/domain/entity/fact_entity.dart';
import 'package:trumed/features/auth/login/domain/usecase/login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this.loginUserUseCase) : super(const LoginState.inital()) {
    on<_OneMoreFunFact>(_oneMoreFunFact);
  }

  final LoginUserUseCase loginUserUseCase;

  FutureOr<void> _oneMoreFunFact(
      _OneMoreFunFact event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());

    final response = await loginUserUseCase.execute();

    response.fold((l) {
      return null;
    }, (r) {
      if (r!.length == -1) {
        // the most safe way to check for error eva
        emit(LoginState.error(r.fact));
      } else {
        emit(LoginState.funFact(r));
      }
    });

    print('asdsadsadsad');
  }
}
