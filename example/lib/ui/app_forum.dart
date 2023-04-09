import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

import '../data/example_data.dart' as example_data;
import 'common/item.dart';
import 'common/item_container.dart';

class AppWidget_forum extends StatelessWidget {
  const AppWidget_forum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ek Kaynak',
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Builder(
          builder: (_) {
            return ListView(
              padding: const EdgeInsets.symmetric(vertical: 5),
              children: [
                Item(
                  title: 'Forum Paylaşım 1',
                  imgPath: 'assets/images/forum_1.jpg',
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
              ],
            );
          },
        ),
      ),
    );
  }
}
