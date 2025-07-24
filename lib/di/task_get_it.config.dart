// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/caching/app_database.dart' as _i281;
import '../core/network/dio.dart' as _i672;
import '../task_1/authentication/register/data/register_repository_impl.dart'
    as _i340;
import 'module/caching_module.dart' as _i346;
import 'module/network_module.dart' as _i881;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final cachingModule = _$CachingModule();
    final networkModule = _$NetworkModule();
    await gh.lazySingletonAsync<_i281.AppDatabase>(
      () => cachingModule.appDatabase,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(() => networkModule.dio);
    gh.lazySingleton<_i672.DioClient>(() => _i672.DioClient(gh<_i361.Dio>()));
    gh.factory<_i340.RegisterRepositoryImpl>(
        () => _i340.RegisterRepositoryImpl(gh<_i281.AppDatabase>()));
    return this;
  }
}

class _$CachingModule extends _i346.CachingModule {}

class _$NetworkModule extends _i881.NetworkModule {}
