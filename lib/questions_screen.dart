import 'package:flutter/material.dart';
import 'package:quizapp/answers_button.dart';
import 'package:quizapp/data/quizz.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.purple, Colors.deepPurple],
            )
          ),
          child: Center(
            child: Container(
              margin: const EdgeInsets.all(40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    currentQuestion.question,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30,),
                  ...currentQuestion.answers.map((answer){
                    return AnswersButton(answer);
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
