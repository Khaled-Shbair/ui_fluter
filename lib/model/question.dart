class Question {
  final String queation;
  final String answer;
  bool expanded;

  Question({
    required this.queation,
    required this.answer,
    this.expanded = false,
  });
}
