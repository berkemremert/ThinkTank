import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

import '../data/example_data.dart' as example_data;
import 'common/item.dart';
import 'common/item_container.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Akıl Defteri',
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Akıl Defteri'),
          actions: [
            Builder(
              builder: (ctx) {
                return ReactionButton<String>(
                  onReactionChanged: (String? value) {
                    ScaffoldMessenger.of(ctx).showSnackBar(
                      SnackBar(
                        content: Text('Selected value: $value'),
                      ),
                    );
                  },
                  reactions: example_data.flagsReactions,
                  initialReaction: Reaction<String>(
                    value: null,
                    icon: const Icon(
                      Icons.language,
                    ),
                  ),
                  boxColor: Colors.black.withOpacity(0.5),
                  boxRadius: 10,
                  boxDuration: const Duration(milliseconds: 500),
                  itemScaleDuration: const Duration(milliseconds: 200),
                );
              },
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: Builder(
          builder: (_) {
            return ListView(
              padding: const EdgeInsets.symmetric(vertical: 5),
              children: [
                Item(
                  title: 'Akademi 1. Ders',
                  imgPath: 'assets/images/img1.jpg',
                  reactions: example_data.reactions,
                ),
                ItemContainer(
                  imgPath: 'assets/images/img_soru_1.jpg',
                  reactions: example_data.reactions,
                ),
                Item(
                  title: 'Akademi 2. Ders',
                  imgPath: 'assets/images/img2.jpg',
                  reactions: example_data.reactions,
                ),
                ItemContainer(
                  imgPath: 'assets/images/img_soru_2.jpg',
                  reactions: example_data.reactions,
                ),
                Item(
                  title: 'Akademi 3. Ders',
                  imgPath: 'assets/images/img1.jpg',
                  reactions: example_data.reactions,
                ),
                ItemContainer(
                  imgPath: 'assets/images/img_soru_1.jpg',
                  reactions: example_data.reactions,
                ),
                Item(
                  title: 'Akademi 4. Ders',
                  imgPath: 'assets/images/img2.jpg',
                  reactions: example_data.reactions,
                ),
                ItemContainer(
                  imgPath: 'assets/images/img_soru_2.jpg',
                  reactions: example_data.reactions,
                ),
                Item(
                  title: 'Akademi 5. Ders',
                  imgPath: 'assets/images/img1.jpg',
                  reactions: example_data.reactions,
                ),
                ItemContainer(
                  imgPath: 'assets/images/img_soru_1.jpg',
                  reactions: example_data.reactions,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
