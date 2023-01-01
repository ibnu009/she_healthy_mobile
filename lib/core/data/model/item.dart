class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    required this.info,
    this.isExpanded = false,
  });

  List<String> expandedValue;
  String headerValue;
  String info;
  bool isExpanded;
}