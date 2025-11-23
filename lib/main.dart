import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_rocket_hometask_two/Repository/mock_repository.dart';
import 'package:med_rocket_hometask_two/bloc/questionnaire_bloc.dart';
import 'package:med_rocket_hometask_two/bloc/questionnaire_event.dart';
import 'package:med_rocket_hometask_two/pages/questionnaire_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => QuestionnaireBloc(MockRepositoryImpl(),
        )..add(LoadQuestionnaireStatus()),
        child: const QuestionnaireScreen(),
      ),
    );
  }
}
