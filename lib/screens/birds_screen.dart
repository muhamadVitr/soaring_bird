import 'package:flutter/material.dart';
import 'package:soaring_bird/data/data_source.dart';

class BirdsScreen extends StatelessWidget {
  DataSource birds = DataSource();

  @override
  Widget build(BuildContext context) {
    final title = 'Long List';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: birds.itemsGenerated.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${birds.itemsGenerated[index]}'),
            );
          },
        ),
      ),
    );
  }
}
