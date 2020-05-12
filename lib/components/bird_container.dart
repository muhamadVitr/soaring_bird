import 'package:flutter/material.dart';
import 'package:soaring_bird/data/data_source.dart';

class BirdContainer extends StatelessWidget {
  final BirdsData birds = BirdsData();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: birds.birdsData.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(birds.birdsData[index].birdSpeech),
          ),
        );
      },
    );
  }
}