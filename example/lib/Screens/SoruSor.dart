
import 'package:flutter/material.dart';

class SoruSor extends StatefulWidget {
  @override
  _SoruSorState createState() => _SoruSorState();
}

class _SoruSorState extends State<SoruSor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Comment',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height:20),
        TextField(
          maxLength: 280,
          maxLines: 7,
          decoration: InputDecoration(
            hintText: 'Enter your Comment',
          ),
          onChanged: (value){},
        )
        ]
      )
    );
  }
}



