import 'dart:math';

import 'package:med_rocket_hometask_two/Repository/repository_interface.dart';

import '../models/questionnaire.dart';

class MockRepositoryImpl implements Repository {
  MockRepositoryImpl._();

  static final MockRepositoryImpl _instance = MockRepositoryImpl._();

  factory MockRepositoryImpl() => _instance;

  @override
  Future<Questionnaire> getData() async {
    await Future.delayed(const Duration(seconds: 2));

    return Questionnaire(percent: double.parse((Random.secure().nextDouble() * 100).toStringAsFixed(2)));
  }
}