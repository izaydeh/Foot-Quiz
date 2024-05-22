import 'package:flutter/material.dart';
import 'package:foot_quiz/data/football_questions.dart';
import 'package:foot_quiz/my_widegets/my_text.dart';
import 'package:foot_quiz/my_widegets/summary_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chosenAnswers, this.onRestart, this.exit,
      {super.key});

  final List<String> chosenAnswers;
  final Function() onRestart;
  final Function() exit;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numOfQuestions = questions.length;
    final numOfCorrectAnswers = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

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
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 317.0),
            child: IconButton(
              onPressed: exit,
              icon: const Icon(Icons.close),
              color: Colors.white,
            ),
          ),
          MyText(
              'You have answerd correctly $numOfCorrectAnswers of $numOfQuestions\'s Questions!',
              20,
              Colors.white),
          SummaryData(getSummaryData()),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 24, 116, 3)),
              onPressed: onRestart,
              icon: const Icon(Icons.restart_alt_outlined),
              label: const Text('Restart The Quiz ')),
        ]));
  }
}
