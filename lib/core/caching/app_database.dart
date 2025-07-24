import 'dart:async';

import 'package:MyTask/core/caching/dao/user_dao.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'model/user_cache_model.dart';
part 'app_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [UserCacheModel])
abstract class AppDatabase extends FloorDatabase {
  UserDao get userDao;
}