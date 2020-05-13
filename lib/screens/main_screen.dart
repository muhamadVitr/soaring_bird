import 'package:flutter/material.dart';
import 'package:soaring_bird/components/bird_button.dart';
import 'package:soaring_bird/screens/search_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: BirdFinder());
            },
          )
        ],
        title: Text('test'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: BirdButton(
                birdTitle: 'The quick brown fox jumps',
                titleColor: Colors.indigo[700],
                pageTravel: '/second',
              ),
            ),
            BirdButton(
              birdTitle: 'Jumps over the lazy dog',
              titleColor: Colors.indigo[700],
            ),
          ]),
    );
  }
}
