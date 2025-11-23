import 'package:equatable/equatable.dart';

import '../models/questionnaire.dart';

sealed class QuestionnaireState extends Equatable{
  const QuestionnaireState();
  @override
  List<Object?> get props => [];

}

class QuestionnaireInitial extends QuestionnaireState{}

class QuestionnaireLoading extends QuestionnaireState{}

class QuestionnaireLoaded extends QuestionnaireState{
  final Questionnaire questionnaire;
  const QuestionnaireLoaded(this.questionnaire);

  @override
  List<Object?> get props => [questionnaire];

}

