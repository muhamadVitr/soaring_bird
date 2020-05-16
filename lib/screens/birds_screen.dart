import 'package:flutter/material.dart';
import 'package:soaring_bird/data/data_source.dart';
import 'package:soaring_bird/screens/search_screen.dart';
import 'package:soaring_bird/style/styles.dart';

class BirdsScreen extends StatelessWidget {
  final BirdsData birds = BirdsData();

  @override
  Widget build(BuildContext context) {
    final title = 'Long List';
    return MaterialApp(
      title: title,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                  icon: kIconBackLight,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              actions: <Widget>[
                IconButton(
                    icon: kIconSearchLight,
                    onPressed: () {
                      showSearch(context: context, delegate: BirdFinder());
                    })
              ],
              title: Text(
                title,
                style: TextStyle(color: Colors.grey),
              ),
              floating: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Column(
                  children: <Widget>[
                    Container(
                      child: ListTile(
                        title: Text(
                          birds.birdsData[index].birdSpeech,
                          style: kSearchResults,
                        ),
                      ),
                    ),
                    Divider(indent: 15, endIndent: 15)
                  ],
                );
              }, childCount: birds.birdsData.length),
            ),
          ],
        ),
      ),
    );
  }
}
