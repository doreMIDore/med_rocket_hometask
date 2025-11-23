class Questionnaire {

  final double? percent;

  const Questionnaire({required this.percent});

  bool get isNotStarted => percent == 0;

  bool get isInProgress =>  percent! > 0 && percent! < 100;

  bool get isCompleted => percent == 100;

  String get statusText {
    if (isNotStarted) return 'Не заполнен';
    if (isCompleted) return 'Полностью заполнен';
    return 'В процессе ($percent%)';
  }

}
