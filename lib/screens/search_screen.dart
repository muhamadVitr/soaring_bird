import 'package:flutter/material.dart';
import 'package:soaring_bird/data/data_architecture.dart';
import 'package:soaring_bird/data/data_source.dart';
import 'package:substring_highlight/substring_highlight.dart';

class BirdFinder extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: query.isEmpty ? Icon(null) : Icon(Icons.close),
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
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
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

    return WordSuggestionList(
        query: this.query, suggestions: suggestion.toList());
  }
}

class WordSuggestionList extends StatelessWidget {
  const WordSuggestionList({this.suggestions, this.query});

  final List<DataArchitecture> suggestions;
  final String query;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.subtitle1;
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int i) {
        final DataArchitecture suggestion = suggestions[i];
        return Card(
            child: Padding(
          padding: EdgeInsets.all(10),
          child: SubstringHighlight(
            text: suggestion.birdSpeech,
            term: query,
            textStyle: textTheme,
            textStyleHighlight: textTheme.copyWith(fontWeight: FontWeight.bold),
          ),
        ));
      },
    );
  }
}
