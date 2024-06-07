import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers, required this.reStart});

  final List<String> chosenAnswers;
  final void Function() reStart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'questions': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$numTotalQuestions 개의 문제중 $numCorrectQuestions개 정답!',
                style: GoogleFonts.jua(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(
                height: 30,
              ),
              QuestionsSummary(summaryData),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton.icon(
                onPressed: reStart,
                icon: const Icon(Icons.access_alarm, color: Colors.white,),
                label: Text(
                  '퀴즈 재시작!',
                  style: GoogleFonts.jua(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
        ));
  }
}
