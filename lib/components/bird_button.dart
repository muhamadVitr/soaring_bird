import 'package:flutter/material.dart';

class BirdButton extends StatelessWidget {
  BirdButton({this.birdTitle, this.titleColor, this.pageTravel});

  final String birdTitle;
  final Color titleColor;
  final String pageTravel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, pageTravel);
      },
      child: Container(
        padding: EdgeInsets.all(15),
        color: titleColor, //editable
        child: Text(
          birdTitle, //editable
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
              fontSize: 20),
        ),
      ),
    );
  }
}
