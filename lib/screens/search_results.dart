import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soaring_bird/data/data_architecture.dart';
import 'package:soaring_bird/style/styles.dart';
import 'package:substring_highlight/substring_highlight.dart';

class BirdFindingsResults extends StatefulWidget {
  const BirdFindingsResults({this.suggestionList, this.query});

  final List<DataArchitecture> suggestionList;
  final String query;

  @override
  _BirdFindingsResultsState createState() => _BirdFindingsResultsState();
}

class _BirdFindingsResultsState extends State<BirdFindingsResults> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            final String _suggestionID = widget.suggestionList[index].birdID;
            final String _suggestion = widget.suggestionList[index].birdSpeech;
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onPanDown: (_) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Container(
                color: Colors.white,
                child: Column(
                  children: widget.query.isEmpty
                      ? <Widget>[
                          ListTile(
                              leading: Icon(Icons.history),
                              title: Text(_suggestion, style: kMainText))
                        ]
                      : <Widget>[
                          ListTile(
                            title: Padding(
                                padding: EdgeInsets.only(bottom: 7),
                                child: Text(
                                  _suggestionID,
                                  style: kSuperText,
                                )),
                            subtitle: Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: SubstringHighlight(
                                text: _suggestion,
                                term: widget.query,
                                textStyle: kSearchResults,
                                textStyleHighlight: kSearchHighlight,
                              ),
                            ),
                            onTap: () =>
                                Navigator.pushNamed(context, '/second'),
                          ),
                          Align(
                              widthFactor: 8,
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                  icon: Icon(Icons.favorite), onPressed: null)),
                          Divider(
                            indent: 30,
                            endIndent: 30,
                            color: Colors.black26,
                          ),
                        ],
                ),
              ),
            );
          }, childCount: widget.suggestionList.length),
        ),
      ],
    );
  }
}
