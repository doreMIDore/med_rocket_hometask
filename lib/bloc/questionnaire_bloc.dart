import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_rocket_hometask_two/Repository/mock_repository.dart';
import 'package:med_rocket_hometask_two/bloc/questionnaire_event.dart';
import 'package:med_rocket_hometask_two/bloc/questionnaire_state.dart';

class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState> {
  final MockRepositoryImpl repositoryImpl;

  QuestionnaireBloc(this.repositoryImpl) : super(QuestionnaireInitial()) {
    on<LoadQuestionnaireStatus>(_onLoad);
  }

  Future<void> _onLoad(
    LoadQuestionnaireStatus event,
    Emitter<QuestionnaireState> emit,
  ) async {
    emit(QuestionnaireLoading());
    final questionnaire = await repositoryImpl.getData();
    emit(QuestionnaireLoaded(questionnaire));
  }
}
