import '../models/questionnaire.dart';

abstract interface class Repository {
  Future<Questionnaire> getData();
}