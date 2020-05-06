import 'package:flutter/material.dart';
import 'package:soaring_bird/components/mamaBird_button.dart';
import 'package:soaring_bird/components/bird_button.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MamaBirdButton(
              mamaBirdTitle: 'The quick brown fox jumps',
              titleColor: Colors.indigo[700],
            ),
            MamaBirdButton(
              mamaBirdTitle: 'Jumps over the lazy dog',
              titleColor: Colors.indigo[700],
            ),
            BirdButton()
          ]),
    );
  }
}
