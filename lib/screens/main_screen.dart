import 'package:flutter/material.dart';
import 'package:soaring_bird/components/main_container.dart';
import 'package:soaring_bird/data/data_compile.dart';
import 'package:soaring_bird/screens/search_delegate.dart';
import 'package:soaring_bird/style/styles.dart';

class MainScreen extends StatelessWidget {
  final BirdCompile mainCompilation = BirdCompile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(170.0),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(
                    Icons.dehaze,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    build(context);
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: kIconSearchLight,
                onPressed: () {
                  showSearch(context: context, delegate: BirdFinder());
                },
              )
            ],
            title: Text(
              'test',
              style: TextStyle(color: Colors.grey),
            ),
          ),
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
        body: ListView.builder(
            itemBuilder: (context, index) => MainContainer(
                birdTitle: mainCompilation.mainCompile[index],
                pageTravel: null)));
  }
}
