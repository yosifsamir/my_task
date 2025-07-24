import 'package:MyTask/core/caching/app_database.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CachingModule {

  @preResolve
  @lazySingleton
  Future<AppDatabase> get appDatabase async {
    return
        await $FloorAppDatabase.databaseBuilder('app_database.db')
            .build();
  }
}
