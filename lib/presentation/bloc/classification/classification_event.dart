import 'dart:io';

import 'package:she_healthy/core/data/request/upload_classification.dart';

abstract class ClassificationEvent {}

class UploadClassification extends ClassificationEvent {
  final File file;
  final String classificationType;
  UploadClassification({required this.file, required this.classificationType});
}
