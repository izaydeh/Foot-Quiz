import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foot_quiz/my_widegets/indext_style.dart';
import 'package:foot_quiz/my_widegets/question_style.dart';

class ItemData extends StatelessWidget {
  const ItemData(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    final isUserAnswer = itemData['user_answer'] as String;

    final indexNumber = itemData['question_index'] as int;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(isCorrectAnswer, indexNumber),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                textAlign: TextAlign.left,
                style: GoogleFonts.lato(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              UserAnswerIdentifier(isCorrectAnswer, isUserAnswer),
              Text(
                itemData['correct_answer'] as String,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 100, 234, 66)),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        )
      ],
    );
  }
}
