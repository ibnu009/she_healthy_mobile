import 'package:meta/meta.dart';
import 'dart:convert';

ClassificationResponse classificationResponseFromJson(String str) => ClassificationResponse.fromJson(json.decode(str));

String classificationResponseToJson(ClassificationResponse data) => json.encode(data.toJson());

class ClassificationResponse {
  ClassificationResponse({
    required this.data,
    required this.assumption,
  });

  String data;
  String assumption;


  factory ClassificationResponse.fromJson(Map<String, dynamic> json) => ClassificationResponse(
    data: json["data"],
    assumption: json["assumption"],
  );

  Map<String, dynamic> toJson() => {
    "data": data,
  };
}
