import '../core/data/model/item.dart';
import 'property_info.dart';

List<Item> generateItems(int numberOfItems, List<String> data) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: headerValueByIndex(index),
      expandedValue: divideDataByIndex(index, data),
      info: infoByIndex(index),
    );
  });
}

List<String> divideDataByIndex(int index, List<String> data) {
  List<String> newData = [];
  newData.clear();
  switch (index) {
    case 0:
      newData.add(data[0]);
      newData.add(data[1]);
      newData.add(data[2]);
      newData.add(data[3]);
      break;
    case 1:
      newData.add(data[4]);
      newData.add(data[5]);
      newData.add(data[6]);
      newData.add(data[7]);
      break;
    case 2:
      newData.add(data[8]);
      newData.add(data[9]);
      newData.add(data[10]);
      newData.add(data[11]);
      break;
    default:
      newData.add(data[12]);
      newData.add(data[13]);
      newData.add(data[14]);
      newData.add(data[15]);
  }

  return newData;
}

String headerValueByIndex(int index) {
  String result = "";
  switch (index) {
    case 0:
      result = "Contrast";
      break;
    case 1:
      result = "Dissimilarity";
      break;
    case 2:
      result = "Energy";
      break;
    default:
      result = "Correlation";
  }

  return result;
}

String infoByIndex(int index) {
  String result = "";
  switch (index) {
    case 0:
      result = propertyInfoContrast;
      break;
    case 1:
      result = propertyInfoDissimilarity;
      break;
    case 2:
      result = propertyInfoEnergy;
      break;
    default:
      result = propertyInfoCorrelation;
  }

  return result;
}


String angleByIndex(int index) {
  String result = "";
  switch (index) {
    case 0:
      result = "0 \u{00B0}";
      break;
    case 1:
      result = "45 \u{00B0}";
      break;
    case 2:
      result = "90 \u{00B0}";
      break;
    default:
      result = "135 \u{00B0}";
  }

  return result;
}
