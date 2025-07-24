import 'package:MyTask/core/network/dio.dart';
import 'package:MyTask/di/task_get_it.dart';
import 'package:MyTask/task_1/anime/data/model/anime_character.dart';
import 'package:MyTask/task_1/anime/domain/anime_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'data/repository/anime_repository_impl.dart';

class AnimePage extends StatefulWidget {
  const AnimePage({super.key});

  @override
  State<AnimePage> createState() => _AnimePageState();
}

class _AnimePageState extends State<AnimePage> {
  late AnimeRepository _animeRepository;
  List<Character> characters = [];

  @override
  void initState() {
    _animeRepository = AnimeRepositoryImpl(dioClient: getIt<DioClient>());
    _animeRepository.getAllAnime().then(
      (value) {
        characters.addAll(value);
        setState(() {

        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.helloWorld, style: TextStyle(fontSize: 24),),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          characters[index].images?.first ?? "",
                        )
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        characters[index].name ?? "",
                        style: const TextStyle(fontSize: 20 , color: Colors.blue),
                      ),
                    ],
                  ),
                );
              },
              itemCount: characters.length,
            ),
          )
        ],
      ),
    );
  }
}
