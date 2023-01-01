import '../../../core/repository/classification_repository.dart';
import 'classification_event.dart';
import 'classification_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClassificationBloc extends Bloc<ClassificationEvent, ClassificationState> {
  late ClassificationRepository _repository;

  ClassificationBloc() : super(InitClassificationState()) {
    _repository = ClassificationRepository.instance;

    on<UploadClassification>((event, emit) async {
      emit(ShowLoading());
      var data = await _repository.uploadClassification(event.file, event.classificationType);
      if (data.data.isNotEmpty) {
        emit(ShowSuccessClassification(data: data.data, classification: data.assumption));
      } else {
        emit(ShowFailedClassification());
      }
    });
  }
}
