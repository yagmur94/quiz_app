import 'package:quiz_app/models/questions_model.dart';

const questions = [
  Question(
    question:
    "Aşağıdakilerden hangisi flutterda state'i update eden fonksiyondur?",
    answers: ["setState", "constructor", "readState", "writeState"],
    correctAnswer: "setState",
  ),
  Question(
    question: "Flutter hangi dili kullanır?",
    answers: ["javascript", "dart", "c#", "java"],
    correctAnswer: "dart",
  ),
  Question(
    question: "Flutter hangi şirket tarafından geliştirilmiştir?",
    answers: ["Microsoft", "Apple", "Google", "Facebook"],
    correctAnswer: "Microsoft",
  ),
  Question(
    question: "Flutter'da UI oluşturmak için hangi terim kullanılır?",
    answers: ["Kanvas", "Widget", "Component", "View"],
    correctAnswer: "Widget",
  ),
  Question(
    question: "Flutter'da, widget'ların boyutunu ve yerini ayarlamak için hangi widget kullanılır?",
    answers: ["Frame", "Layout", "View", "Container"],
    correctAnswer: "Container",
  ),
  Question(
    question: "Flutter uygulamaları hangi platformlarda çalışır?",
    answers: ["Sadece iOS", "Sadece Android", "Hem iOS hem de Android", "Yalnızca web"],
    correctAnswer: "Hem iOS hem de Android",
  ),
];