import 'package:flutter/material.dart';
import 'package:soaring_bird/components/bird_button.dart';
import 'package:soaring_bird/screens/search_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.dehaze,
              color: Colors.grey,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            onPressed: () {
              showSearch(context: context, delegate: BirdFinder());
            },
          )
        ],
        title: Text('test'),
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
    );
  }
}
