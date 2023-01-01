abstract class ClassificationState {}

class InitClassificationState extends ClassificationState {}

class ShowLoading extends ClassificationState {}

class ShowSuccessClassification extends ClassificationState {
  String data;
  String classification;

  ShowSuccessClassification(
      {required this.data,
      required this.classification});
}

class ShowFailedClassification extends ClassificationState {}
