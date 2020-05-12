import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder();
  }
}

class BirdFinder extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}

class WordSuggestionList extends StatelessWidget {
  const WordSuggestionList({this.suggestions, this.query});

  final List<String> suggestions;
  final String query;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int i) {
        final String suggestion = suggestions[i];
        return ListTile(
          leading: query.isEmpty ? Icon(Icons.history) : Icon(null),
          title: RichText(
            text: TextSpan(
              text: suggestion.substring(0, query.length),
              style: TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: suggestion.substring(query.length),
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
