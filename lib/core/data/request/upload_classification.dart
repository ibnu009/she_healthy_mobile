import 'dart:io';

class UploadClassificationRequest {
  UploadClassificationRequest({this.files});

  File? files;

  Map<String, dynamic> toJson() => {
    "file": files
  };
}