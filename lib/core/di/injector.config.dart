// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/login/data/repository/login_repository_impl.dart'
    as _i9;
import '../../features/auth/login/domain/repository/login_repository.dart'
    as _i5;
import '../../features/auth/login/domain/usecase/login_usecase.dart' as _i4;
import '../../features/auth/login/presentation/blocs/login/login_bloc.dart'
    as _i8;
import '../network/config.dart' as _i3;
import '../network/dio_provider.dart' as _i10;
import '../network/network_info.dart' as _i6;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dioProvider = _$DioProvider();
  gh.factory<_i3.IConfig>(() => _i3.AppConfig());
  gh.factory<_i4.LoginUserUseCase>(
      () => _i4.LoginUserUseCase(gh<_i5.LoginRepository>()));
  gh.factory<_i6.NetworkInfo>(() => _i6.NetworkInfoImpl());
  gh.singleton<_i7.Dio>(dioProvider.dio(gh<_i3.IConfig>()));
  gh.factory<_i8.LoginBloc>(() => _i8.LoginBloc(gh<_i4.LoginUserUseCase>()));
  gh.factory<_i5.LoginRepository>(() => _i9.LoginRepositoryImpl(
        dio: gh<_i7.Dio>(),
        config: gh<_i3.IConfig>(),
        networkInfo: gh<_i6.NetworkInfo>(),
      ));
  return getIt;
}

class _$DioProvider extends _i10.DioProvider {}
