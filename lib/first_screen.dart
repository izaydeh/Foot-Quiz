import 'package:flutter/material.dart';
import 'package:foot_quiz/my_widegets/my_text.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.newScreen, {super.key});

  final void Function() newScreen;

  @override
  Widget build(context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 2, 60, 4),
              Color.fromARGB(255, 29, 179, 23),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 170,
                color: const Color.fromARGB(200, 255, 255, 255),
              ),
              const SizedBox(
                height: 15,
              ),
              const MyText(
                  'Foot Quiz', 40.0, Color.fromARGB(200, 255, 255, 255)),
              const SizedBox(
                height: 100.0,
              ),
              const MyText(
                'Test Your Football knowledge !',
                20.0,
                Color.fromARGB(200, 255, 255, 255),
              ),
              const SizedBox(
                height: 60.0,
              ),
              ElevatedButton.icon(
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    foregroundColor: const Color.fromARGB(255, 8, 119, 4),
                    backgroundColor: const Color.fromARGB(230, 255, 255, 255)),
                onPressed: newScreen,
                icon: const Icon(Icons.sports_soccer),
                label: const Text(
                  'Start Playing ',
                ),
              ),
            ],
          ),
        ));
  }
}
