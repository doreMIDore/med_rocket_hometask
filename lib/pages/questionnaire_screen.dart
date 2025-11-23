import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/questionnaire_bloc.dart';
import '../bloc/questionnaire_event.dart';
import '../bloc/questionnaire_state.dart';

class QuestionnaireScreen extends StatelessWidget {
  const QuestionnaireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
          builder: (context, state) {
            if (state is QuestionnaireLoading) {
              return const CircularProgressIndicator();
            }

            if (state is QuestionnaireLoaded) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    state.questionnaire.statusText,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600 ),
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
      // for Test
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => context.read<QuestionnaireBloc>().add(LoadQuestionnaireStatus()),
      //   child: const Icon(Icons.refresh),
      // ),
    );
  }
}