import 'package:flutter/material.dart';
import 'package:foot_quiz/my_widegets/my_text.dart';
import 'package:foot_quiz/my_widegets/stayled_button.dart';
import 'package:foot_quiz/data/football_questions.dart';

class Questions extends StatefulWidget {
  const Questions({
    super.key,
    required this.onSelecteAnswer,
  });

  final void Function(String answer) onSelecteAnswer;

  @override
  State<Questions> createState() {
    return _Questions();
  }
}

class _Questions extends State<Questions> {
  var myQuestion = 0;

  void gotAnswer(String answer) {
    widget.onSelecteAnswer(answer);
    setState(() {
      myQuestion++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[myQuestion];
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 2, 60, 4),
            Color.fromARGB(255, 29, 179, 23),
          ],
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 120,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: MyText(currentQuestion.text, 20, Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
              ...currentQuestion.getShuffledAnswer().map((item) {
                return Answers(item, () {
                  gotAnswer(item);
                });
              }),
            ],
          ),
        ],
      ),
    );
  }
}
