import 'package:MyTask/core/caching/model/user_cache_model.dart';
import 'package:floor/floor.dart';

@dao
abstract class UserDao {
  @insert
  Future<void> insertUser(UserCacheModel user);

  @Query(
      'SELECT * FROM user where userName = :userName and password = :password')
  Future<UserCacheModel?> getUser(String userName, String password);
}
