import 'package:flutter/material.dart';
import 'package:quizapp/questions_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: Colors.white,
            ),
            SizedBox(height: 30),
            const Text(
              'Learn flutter the fun way!',
              style:
                  TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QuestionsScreen()));
                },
                icon: Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,),
                label: const Text(
                  'Start Quiz',
                  style: TextStyle(
                    color: Colors.white),
                ),
            ),
          ],
        ),
      );
  }
}