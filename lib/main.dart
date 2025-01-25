
import 'package:flutter/material.dart';
import 'package:quizzapp/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.lightBlue,
              ],
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}