import 'package:equatable/equatable.dart';

sealed class QuestionnaireEvent extends Equatable{
  const QuestionnaireEvent();
  @override
  List<Object?> get props => [];
}

class LoadQuestionnaireStatus extends QuestionnaireEvent{
  
}