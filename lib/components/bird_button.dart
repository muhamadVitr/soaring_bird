import 'package:flutter/material.dart';

class BirdButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.yellow,
        child: Text('test'),
      ),
    );
  }
}
