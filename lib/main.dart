import 'package:flutter/material.dart';
import 'package:flutter_ornek/question.dart';

void main() {
  runApp(const Quiz());
}


class Quiz extends StatelessWidget {
  const Quiz({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuizApp(),
    );
  }
}