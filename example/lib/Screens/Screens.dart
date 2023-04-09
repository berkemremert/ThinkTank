import 'package:flutter/material.dart';
import 'Sayfa1.dart';
import 'Sayfa2.dart';
import 'SoruSor.dart';
import 'UserProfile.dart';

///Users/berkemremert/Downloads/flutter-reaction-button-master/example/lib/Screens/Sayfa1.dart

import 'package:flutter/material.dart';
class Screens extends StatefulWidget {
  const Screens({Key? key}) : super(key: key);

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Memento'),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
              Tab(text: 'Forum'),
              Tab(text: 'Ek Kaynak'),
            ],
               indicatorColor:Colors.orange ,
              indicatorSize: TabBarIndicatorSize.label ,
            ),
            actions: [
              IconButton(
                icon: CircleAvatar(
                  backgroundImage: NetworkImage('https://pbs.twimg.com/media/Dk4pYctXcAAhY3J.jpg'),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserProfile(),
                    ),
                  );
                },
              ),
            ],
          ),
          body: TabBarView(children: [
            Sayfa2(), Sayfa1(),
          ],)
        ));
  }
}


