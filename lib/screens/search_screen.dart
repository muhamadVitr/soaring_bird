import 'package:flutter/material.dart';
import 'package:soaring_bird/data/data_architecture.dart';
import 'package:soaring_bird/data/data_source.dart';
import 'package:soaring_bird/style/styles.dart';
import 'package:substring_highlight/substring_highlight.dart';

class BirdFinder extends SearchDelegate {
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
      primaryColor: Colors.grey[50],
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
    final BirdsData searchResults = BirdsData();
    final Iterable<DataArchitecture> suggestion = searchResults.birdsData
        .where((a) => a.birdSpeech.toLowerCase().contains(query));

    return BirdFindingsResults(
        query: this.query, suggestions: suggestion.toList());
  }
}

class BirdFindingsResults extends StatelessWidget {
  const BirdFindingsResults({this.suggestions, this.query});

  final List<DataArchitecture> suggestions;
  final String query;

  @override
  Widget build(BuildContext context) {
    final BirdsData birds = BirdsData();
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            final DataArchitecture suggestion = suggestions[index];
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onPanDown: (_) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Column(
                children: <Widget>[
                  Container(
                    child: ListTile(
                      title: SubstringHighlight(
                        text: suggestion.birdSpeech,
                        term: query,
                        textStyle: kSearchResults,
                        textStyleHighlight: kSearchHighlight,
                      ),
                    ),
                  ),
                  Divider(
                    indent: 15,
                    endIndent: 15,
                  )
                ],
              ),
            );
          }, childCount: suggestions.length),
        ),
      ],
    );
  }
}
