import 'package:MyTask/task_1/anime/data/model/anime_character.dart';

abstract class AnimeRepository {
  Future<List<Character>> getAllAnime();
}