class DataSource {
  final itemsGenerated = List<String>.generate(10000, (i) => "Item $i");

  final List<String> entriesGenerated = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
}
