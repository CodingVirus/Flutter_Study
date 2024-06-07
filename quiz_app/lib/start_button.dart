import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: startQuiz,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      icon: const Icon(Icons.arrow_circle_right_outlined),
      label: const Text('퀴즈 시작'),
    );
  }
}
