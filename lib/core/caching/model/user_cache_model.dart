import 'package:floor/floor.dart';

@Entity(
  tableName: 'user',
)
class UserCacheModel {
  @PrimaryKey(autoGenerate: true)
  int? id;
  String? userName;
  String? password;

  UserCacheModel({this.id, this.userName, this.password});
}
