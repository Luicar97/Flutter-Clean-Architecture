part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.inital() = _Initial;

  const factory LoginState.loading() = _Loading;

  const factory LoginState.funFact(FactEntity fact) = _FunFact;

  const factory LoginState.error(String error) = _Error;
}
