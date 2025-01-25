class QuizModel {
  String question;
  List<String> answers;

  QuizModel(this.question, this.answers);

  List<String> getShuffledAnswers() {
    // copy the original list
    final shuffledAnswers = List.of(answers);
    // Shuffle the copied list
    shuffledAnswers.shuffle();
    // Return the shuffled list
    return shuffledAnswers;
  }
}