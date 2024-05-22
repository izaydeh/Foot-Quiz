import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  const MyText(this.text, this.fontsize, this.color, {super.key});

  final String text;
  final double fontsize;
  final Color color;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: color,
        fontSize: fontsize,
      ),
      textAlign: TextAlign.center,
    );
  }
}
