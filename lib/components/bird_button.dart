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
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  birdTitle,
                  style: TextStyle(color: Colors.black54, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.black87,
              )
            ],
          ),
        ),
      ),
    );
  }
}
