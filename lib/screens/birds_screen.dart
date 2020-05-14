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
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white24,
              leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      showSearch(context: context, delegate: BirdFinder());
                    })
              ],
              title: Text(title),
              floating: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  color: Colors.white24,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          birds.birdsData[index].birdSpeech,
                          style: textTheme,
                        ),
                      ),
                      Divider(
                        indent: 45,
                        endIndent: 45,
                        color: Colors.black,
                      )
                    ],
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
