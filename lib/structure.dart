import 'package:flutter/material.dart';
import 'package:foot_quiz/data/football_questions.dart';
import 'package:foot_quiz/first_screen.dart';
import 'package:foot_quiz/questions_screen.dart';
import 'package:foot_quiz/result_screen.dart';

class Structure extends StatefulWidget {
  const Structure({super.key});

  @override
  State<Structure> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Structure> {
  Widget? activeScreen;

  List<String> selectedAnswers = [];

  void chooseAnswers(String answers) {
    selectedAnswers.add(answers);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(selectedAnswers, restartQuiz, exit);
      });
    }
  }

  void exit() {
    setState(() {
      selectedAnswers = [];
      activeScreen = HomePage(switchScreen);
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = Questions(onSelecteAnswer: chooseAnswers);
    });
  }

  @override
  void initState() {
    activeScreen = HomePage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = Questions(onSelecteAnswer: chooseAnswers);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: activeScreen,
      ),
    );
  }
}
