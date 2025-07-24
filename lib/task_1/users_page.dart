import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'anime/anime_page.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text(
        //     "Users List",
        //     style: TextStyle(color: Colors.white),
        //   ),
        //   backgroundColor: Colors.blue,
        // ),
        body: SafeArea(
      child: SizedBox.expand(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(32),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24))),
              clipBehavior: Clip.hardEdge,
              child: Text(
                AppLocalizations.of(context)!.usersPage,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AnimePage(),
                        )
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 8, left: 4, right: 4, top: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8),
                            child: ShaderMask(
                              blendMode: BlendMode.srcATop,
                              shaderCallback: (bounds) {
                                return const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.blue, Colors.green],
                                ).createShader(bounds);
                              },
                              child: const CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 30,
                                  child: Text('HM')),
                            ),
                          ),
                          Expanded(
                            child: LayoutBuilder(builder: (context, constraints) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    color: Colors.black12,
                                    height: 40,
                                    width: constraints.maxWidth / 2,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    color: Colors.black12,
                                    height: 40,
                                  ),
                                ],
                              );
                            }),
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 10,
                shrinkWrap: true),
          ],
        ),
      ),
    ));
  }
}
