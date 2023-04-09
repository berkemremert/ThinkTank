import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

import '../Screens/video_player.dart';
import '../data/example_data.dart' as example_data;
import 'common/item.dart';
import 'common/item_container.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

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
                  title: 'Akademi 2. Ders',
                  imgPath: "https://www.youtube.com/watch?v=VPvVD8t02U8&ab_channel=freeCodeCamp.org",
                  reactions: example_data.reactions,
                ),
                ItemContainer(
                  imgPath: 'assets/images/img_soru_2.jpg',
                  reactions: example_data.reactions,
                ),
                Item(
                  title: 'Akademi 3. Ders',
                  imgPath: "https://www.youtube.com/watch?v=3XipSv2CWiQ&ab_channel=FlutterMapp",
                  reactions: example_data.reactions,
                ),
                ItemContainer(
                  imgPath: 'assets/images/img_soru_1.jpg',
                  reactions: example_data.reactions,
                ),
                Item(
                  title: 'Akademi 4. Ders',
                  imgPath: "https://www.youtube.com/watch?v=l4bLPfS1uik&t=548s&ab_channel=AtifNaseem",
                  reactions: example_data.reactions,
                ),
                ItemContainer(
                  imgPath: 'assets/images/img_soru_2.jpg',
                  reactions: example_data.reactions,
                ),
                Item(
                  title: 'Akademi 5. Ders',
                  imgPath: "https://www.youtube.com/watch?v=FotsFANrIrU&ab_channel=FlutterMapp",
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
