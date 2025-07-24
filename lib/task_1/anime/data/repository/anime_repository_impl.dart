
import 'package:MyTask/core/network/dio.dart';
import 'package:MyTask/task_1/anime/data/model/anime_character.dart';
import 'package:MyTask/task_1/anime/domain/anime_repository.dart';

class AnimeRepositoryImpl implements AnimeRepository {
  DioClient dioClient;

  AnimeRepositoryImpl({required this.dioClient});

  @override
  Future<List<Character>> getAllAnime() async {
    final response = await dioClient.get("/characters");
    final Map<String, dynamic> data = response.data;

    return CharactersResponse.fromJson(data).characters ?? [];
  }
}
