import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserAnswerIdentifier extends StatelessWidget {
  const UserAnswerIdentifier(this.isCorrectAnswer, this.isUserAnswer,
      {super.key});

  final bool isCorrectAnswer;
  final String isUserAnswer;

  @override
  Widget build(context) {
    return Text(isUserAnswer,
        style: GoogleFonts.lato(
          color: isCorrectAnswer
              ? const Color.fromARGB(255, 100, 234, 66)
              : const Color.fromARGB(255, 233, 59, 65),
        ));
  }
}
