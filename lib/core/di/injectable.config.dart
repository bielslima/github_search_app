// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repositories/repositories.repository.dart' as _i4;
import '../../data/repositories/user.repository.dart' as _i6;
import '../../data/usecases/find_user.repository.dart' as _i7;
import '../../data/usecases/search_repositories.repository.dart' as _i5;
import '../../ui/controllers/seach-page/search-page.controller.dart' as _i8;
import '../http/http_client.dart' as _i3;
import '../singleton/app.singleton.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.HttpClient>(() => _i3.HttpClient());
  gh.factory<_i4.RepositoriesRepository>(
      () => _i4.RepositoriesRepository(get<_i3.HttpClient>()));
  gh.factory<_i5.SearchRepositoriesUseCase>(
      () => _i5.SearchRepositoriesUseCase(get<_i4.RepositoriesRepository>()));
  gh.factory<_i6.UserRepository>(
      () => _i6.UserRepository(get<_i3.HttpClient>()));
  gh.factory<_i7.FindUserUseCase>(
      () => _i7.FindUserUseCase(get<_i6.UserRepository>()));
  gh.factory<_i8.SearchPageController>(() => _i8.SearchPageController(
      get<_i7.FindUserUseCase>(),
      get<_i5.SearchRepositoriesUseCase>(),
      get<_i9.AppSingleton>()));
  gh.singleton<_i9.AppSingleton>(_i9.AppSingleton());
  return get;
}
