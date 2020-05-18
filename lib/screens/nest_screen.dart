import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soaring_bird/components/main_container.dart';
import 'package:soaring_bird/data/data_compile.dart';

class BirdsNest1st extends StatelessWidget {
  final Malik compilation = Malik();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: birdCompilation.length,
        itemBuilder: (context, index) => MainContainer(
            birdTitle: birdCompilation[index], pageTravel: birdTravel[index]),
      ),
    );
  }
}
