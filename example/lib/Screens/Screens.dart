import 'package:flutter/material.dart';
import 'Sayfa1.dart';
import 'Sayfa2.dart';
import 'SoruSor.dart';

///Users/berkemremert/Downloads/flutter-reaction-button-master/example/lib/Screens/Sayfa1.dart


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
              Tab(text: 'Ek Kaynak'),
              Tab(text: 'Forum'),
            ],
               indicatorColor:Colors.orange ,
              indicatorSize: TabBarIndicatorSize.label ,
            ),
          ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.white,
                onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => SoruSor()));
                },
            ),
          body: TabBarView(children: [
            Sayfa1(), Sayfa2(),
          ],)
        ));
  }
}


