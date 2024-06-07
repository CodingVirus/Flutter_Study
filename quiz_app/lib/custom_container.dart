import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/custom_text_style.dart';
import 'package:quiz_app/start_button.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(
              height: 100,
            ),
            const CustomTextStyle(
              text: '재밌는 플러터 퀴즈~!',
              fontSize: 30,
            ),
            const SizedBox(
              height: 20,
            ),
            StartButton(startQuiz),
          ],
        ),
      );
  }
}
