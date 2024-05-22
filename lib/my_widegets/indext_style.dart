import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(this.isCorrectAnswer, this.indexNumber, {super.key});

  final bool isCorrectAnswer;
  final int indexNumber;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCorrectAnswer
            ? Color.fromARGB(255, 102, 235, 69)
            : Color.fromARGB(255, 224, 51, 51),
      ),
      width: 45,
      height: 45,
      child: Center(
        child: Text(
          (indexNumber + 1).toString(),
          style: GoogleFonts.lato(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
