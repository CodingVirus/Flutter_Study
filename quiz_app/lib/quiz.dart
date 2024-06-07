import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'custom_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //Widget? activeScreen;
  List<String> selectedAnswers = [];
  var activeScreen = 1;

  // @override
  // void initState() {
  //   activeScreen = CustomContainer(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      //activeScreen = const QuestionsScreen();
      activeScreen = 2;
    });
  }

  void firstScreen() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 1;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 3;
      });
    }
  }

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == 1
    //     ? CustomContainer(switchScreen)
    //     : const QuestionsScreen();

    Widget screenWidget = CustomContainer(switchScreen);

    if (activeScreen == 2) {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == 3) {
      screenWidget = ResultScreen(
        chosenAnswers: selectedAnswers,
        reStart: firstScreen,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.purpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
