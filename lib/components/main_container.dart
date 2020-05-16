import 'package:flutter/material.dart';

class BirdButton extends StatelessWidget {
  BirdButton(
      {@required this.birdTitle,
      // @required this.titleColor,
      @required this.pageTravel});

  final String birdTitle;
  // final Color titleColor;
  final String pageTravel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, pageTravel);
      },
      child: Container(
        color: Colors.blue,
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Text(
              birdTitle,
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
      ),
    );
  }
}
