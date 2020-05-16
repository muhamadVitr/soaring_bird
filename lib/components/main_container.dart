import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  MainContainer(
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
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 35),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    birdTitle,
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                )),
            Divider(
              indent: 45,
              endIndent: 45,
            )
          ],
        ),
      ),
    );
  }
}
