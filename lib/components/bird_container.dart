import 'package:flutter/material.dart';
import 'package:soaring_bird/data/data_source.dart';

class BirdContainer extends StatelessWidget {
  final BirdsData birds = BirdsData();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.bodyText2;
    return ListView.builder(
      itemCount: birds.birdsData.length,
      itemBuilder: (context, index) {
        return Container(
          child: ListTile(
            title: Text(
              birds.birdsData[index].birdSpeech,
              style: textTheme,
            ),
          ),
        );
      },
    );
  }
}
