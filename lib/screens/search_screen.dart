import 'package:flutter/material.dart';
import 'package:soaring_bird/data/data_architecture.dart';
import 'package:soaring_bird/data/data_source/data_source_01.dart';
import 'package:soaring_bird/screens/search_results.dart';
import 'package:soaring_bird/style/styles.dart';

class BirdFinder extends SearchDelegate {
  List<DataArchitecture> _history = [
    DataArchitecture(birdSpeech: 'hawk'),
    DataArchitecture(birdSpeech: 'eagle'),
    DataArchitecture(birdSpeech: 'pigeon')
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: query.isEmpty ? Icon(null) : kIconCloseLight,
        onPressed: query.isEmpty
            ? () {
                //not yet implemented
              }
            : () {
                query = '';
              },
      )
    ];
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith(
      primaryColor: Colors.white,
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: kIconBackLight,
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('test'),
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final BirdsData1st searchResults = BirdsData1st();
    final Iterable<DataArchitecture> birdsSuggestion = this.query.isEmpty
        ? _history
        : searchResults.birdsData
            .where((a) => a.birdSpeech.toLowerCase().contains(query));

    return BirdFindingsResults(
        query: this.query, suggestionList: birdsSuggestion.toList());
  }
}
