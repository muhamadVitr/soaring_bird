import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soaring_bird/components/main_container.dart';
import 'package:soaring_bird/data/data_compile.dart';

class BirdsNest1st extends StatelessWidget {
  final BirdCompile compilation = BirdCompile();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: compilation.birdCompilation.length,
        itemBuilder: (context, index) => MainContainer(
            birdTitle: compilation.birdCompilation[index],
            pageTravel: compilation.birdTravel[index]),
      ),
    );
  }
}
