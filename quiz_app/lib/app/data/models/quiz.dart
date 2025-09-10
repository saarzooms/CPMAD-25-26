class Quiz {
  int id;
  String question;
  List<String> opts;
  int correctIndex;
  Quiz({
    required this.id,
    required this.question,
    required this.opts,
    required this.correctIndex,
  });
}
