import 'package:flutter/material.dart';
import 'package:soaring_bird/data/data_source.dart';
import 'package:soaring_bird/screens/search_screen.dart';

class BirdsScreen extends StatelessWidget {
  final BirdsData birds = BirdsData();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.bodyText2;
    final title = 'Long List';
    return MaterialApp(
      title: title,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      showSearch(context: context, delegate: BirdFinder());
                    })
              ],
              title: Text(title),
              floating: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      birds.birdsData[index].birdSpeech,
                      style: textTheme,
                    ),
                  ),
                );
              }, childCount: birds.birdsData.length),
            ),
          ],
        ),
      ),
    );
  }
}
