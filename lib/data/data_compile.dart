import 'package:soaring_bird/data/data_source/data_source_01.dart';
import 'package:soaring_bird/data/data_source/data_source_02.dart';
import 'package:soaring_bird/data/data_source/data_source_03.dart';

class BirdCompile {
  List mainCompile = [Malik.title, Ahmad.title, Bukhari.title];
}

class Malik {
  static String title = 'Muwatta Malik';
  static String compileDestination = '/malik';
  static String size = birdCompilation.length.toString();
}

class Ahmad {
  static String title = 'Musnad Ahmad';
  static String compileDestination = '/ahmad';
}

class Bukhari {
  static String title = 'Bukhari';
  static String compileDestination = '/bukhari';
}

//What the fucks is happening????????????????????????????????????????????????
List<String> birdCompilation = [
  BirdsData1st.chapter,
  BirdsData2nd.chapter,
  BirdsData3rd.chapter
];
List<String> birdTravel = [
  BirdsData1st.destination,
  BirdsData2nd.destination,
  BirdsData3rd.destination
];
