import 'package:flutter/material.dart';

class MamaBirdButton extends StatelessWidget {
  MamaBirdButton({this.mamaBirdTitle, this.titleColor});

  final String mamaBirdTitle;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 2, left: 10, right: 10),
      child: Expanded(
        child: Container(
          padding: EdgeInsets.all(15),
          color: titleColor, //editable
          child: Text(
            mamaBirdTitle, //editable
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}
