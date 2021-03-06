import 'package:flutter/material.dart';
import 'package:soaring_bird/data/data_source/data_source_01.dart';
import 'package:soaring_bird/screens/search_delegate.dart';
import 'package:soaring_bird/style/styles.dart';

class BirdsScreen extends StatelessWidget {
  final BirdsData1st birds = BirdsData1st();

  @override
  Widget build(BuildContext context) {
    final title = 'Long List';
    return MaterialApp(
      title: title,
      home: Scaffold(
        backgroundColor: Colors.white,
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
                        title: SelectableText(
                          birds.birdsData[index].birdSpeech,
                          style: kMainText,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    Divider(
                      indent: 30,
                      endIndent: 30,
                      color: Colors.black26,
                    )
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
