import 'package:flutter/material.dart';
import 'package:flutter_ornek/data/questions.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _correctAnswer = 0;
  int _wrongAnswer = 0;
  int _currentIndex = 0;

  void _checkAnswer(String userAnswer) {
    setState(() {
      String correctAnswer = questions[_currentIndex].correctAnswer;

      if (userAnswer == correctAnswer) {
        _correctAnswer++;
      } else {
        _wrongAnswer++;
      }
      _nextQuestion();
    });
  }

  void _nextQuestion() {
    if (_currentIndex == questions.length - 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => QuizResult(
              correctAnswer: _correctAnswer, wrongAnswer: _wrongAnswer),
        ),
      );
    } else {
      setState(() {
        _currentIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz Uygulaması"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${_currentIndex + 1}.${questions[_currentIndex].question}",
                style: const TextStyle(fontSize: 20),
              ),
              Column(
                children: questions[_currentIndex].answers.map((answer) {
                  return Container(
                    padding: const EdgeInsets.all(2),
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () => _checkAnswer(answer),
                      child: Text(answer),
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class QuizResult extends StatelessWidget {
  final int correctAnswer;
  final int wrongAnswer;

  const QuizResult(
      {super.key, required this.correctAnswer, required this.wrongAnswer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Sonuçları'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Doğru Cevaplar: $correctAnswer',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              Text(
                'Yanlış Cevaplar: $wrongAnswer',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuizApp(),
                        ));
                  },
                  child: const Text('Tekrar Başla')),
            ],
          ),
        ),
      ),
    );
  }
}
