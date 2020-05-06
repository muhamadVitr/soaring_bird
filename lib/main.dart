import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() => runApp(SoaringBird());

class SoaringBird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}
