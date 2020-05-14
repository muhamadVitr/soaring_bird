import 'package:flutter/material.dart';
import 'package:soaring_bird/screens/birds_screen.dart';
import 'package:soaring_bird/screens/search_screen.dart';
import 'screens/main_screen.dart';

void main() => runApp(SoaringBird());

class SoaringBird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        theme: ThemeData(
            backgroundColor: Colors.white,
            appBarTheme: AppBarTheme(elevation: 0.0)),
        initialRoute: '/',
        routes: {
          '/': (context) => MainScreen(),
          '/second': (context) => BirdsScreen(),
        },
      ),
    );
  }
}
