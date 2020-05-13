import 'package:flutter/material.dart';
import 'package:soaring_bird/components/bird_container.dart';

class BirdsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Long List';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text(title),
        ),
        body: BirdContainer(),
      ),
    );
  }
}
