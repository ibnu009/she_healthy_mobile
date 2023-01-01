import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:she_healthy/core/data/response/classification_response.dart';
import 'package:she_healthy/presentation/components/dropdown/dropdown_value.dart';

import '../network/network_service.dart';

class ClassificationRepository extends NetworkService {
  ClassificationRepository();

  final storage = const FlutterSecureStorage();

  ClassificationRepository._privateConstructor();

  static final ClassificationRepository _instance = ClassificationRepository._privateConstructor();

  static ClassificationRepository get instance => _instance;

  Map<String, String> header = {};
  final String contentType = "Content-Type";
  final String applicationJson = "application/json";
  final String token = "token";

  Future<ClassificationResponse> uploadClassification(
      File file, String classificationType) async {
    String? readData = await storage.read(key: 'token') ?? "";

    String url = '';
    if (classificationType == classificationItem[1]) {
      url = "$BASE_URL/classification_knn/";
    } else {
      url = "$BASE_URL/classification_cnn/";
    }

    var header = {contentType: applicationJson, token: readData};
    var map = await createClassificationPost(
        url,
        file: file,
        header: header);

    return ClassificationResponse.fromJson(map);
  }
}
