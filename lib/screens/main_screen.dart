import 'package:flutter/material.dart';
import 'package:soaring_bird/components/bird_button.dart';
import 'package:soaring_bird/screens/search_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: BirdFinder());
            },
          )
        ],
        title: Text('test'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 2.5,
          ),
          BirdButton(
            birdTitle: 'Topological Sorting',
            pageTravel: '/second',
          ),
          BirdButton(birdTitle: 'Dijkstra\'algorithm', pageTravel: null),
          BirdButton(birdTitle: 'Flood fill Algorithm', pageTravel: null),
          BirdButton(birdTitle: 'Floyd’s Cycle Detection', pageTravel: null),
          BirdButton(birdTitle: 'Lee algorithm', pageTravel: null),
          BirdButton(birdTitle: 'Binary Search', pageTravel: null),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
