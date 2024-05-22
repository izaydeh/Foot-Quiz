import 'package:flutter/material.dart';
import 'package:foot_quiz/questions_data.dart';

class SummaryData extends StatelessWidget {
  const SummaryData(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: summaryData.map((data) {
              return ItemData(data);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
