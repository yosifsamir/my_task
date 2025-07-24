import 'package:MyTask/core/caching/app_database.dart';
import 'package:MyTask/core/caching/model/user_cache_model.dart';
import 'package:MyTask/task_1/authentication/register/domain/register_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterRepositoryImpl implements RegisterRepository {
  final AppDatabase appDatabase;

  RegisterRepositoryImpl(this.appDatabase);

  @override
  Future<void> register(String userName, String password) {
    return appDatabase.userDao.insertUser(UserCacheModel(
      userName: userName,
      password: password,
    ));
  }
}
