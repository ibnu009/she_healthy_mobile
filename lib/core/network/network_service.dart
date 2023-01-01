import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:logger/logger.dart';

const BASE_URL = 'https://4bbb-2001-448a-5122-cb3b-d3d-3875-1daf-eaa9.ap.ngrok.io';

abstract class NetworkService {
  final logger = Logger(printer: PrettyPrinter());

  Future<dynamic> getMethod(String endPoint, Map<String, String>? headers) async {
    try {
      final response = await http.get(Uri.parse(endPoint), headers: headers);
      var res = json.decode(response.body);
      logger.d(res);
      return res;
    } on SocketException {
      throw Exception("Connection Failed");
    }
  }

  Future<dynamic> postMethod(String endpoint,
      {dynamic body, Map<String, String>? headers}) async {
    try {
      final response = await http.post(Uri.parse(endpoint),
          body: json.encode(body), headers: headers);
      Map<String, dynamic> res = jsonDecode(response.body);
      logger.d(res);
      return res;
    } on SocketException {
      throw Exception("Connection Failed");
    }
  }

  Future<dynamic> postMethodNoBody(String endpoint,
      { Map<String, String>? headers}) async {
    try {
      final response = await http.post(Uri.parse(endpoint), headers: headers);
      Map<String, dynamic> res = jsonDecode(response.body);
      logger.d(res);
      return res;
    } on SocketException {
      throw Exception("Connection Failed");
    }
  }

  Future<dynamic> createClassificationPost(String endpoint,
      {Map<String, String>? header, required File file}) async {
    try {
      var uri = Uri.parse(endpoint);
      var request = http.MultipartRequest("POST", uri);



      request.files.add(await http.MultipartFile.fromPath('file', file.path,
          contentType: MediaType('image','*')));

      var response = await request.send().then(http.Response.fromStream);
      var res = jsonDecode(response.body);
      logger.d(endpoint);
      logger.d(res);
      return res;

    } on SocketException {
      throw Exception("Connection Failed");
    }
  }
}
