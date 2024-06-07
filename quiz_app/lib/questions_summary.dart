import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //margin: const EdgeInsets.all(20),
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: data['user_answer'] == data['correct_answer'] ? Colors.blueAccent : Colors.redAccent,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(((data['question_index'] as int) + 1).toString(),
                          style: GoogleFonts.jua(color: Colors.white70, fontSize: 15)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(data['questions'] as String,
                              style: GoogleFonts.jua(color: Colors.white70, fontSize: 15)),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(data['user_answer'] as String,
                              style: GoogleFonts.jua(color: Colors.white24, fontSize: 13)),
                          Text("정답 : ${data['correct_answer'] as String}",
                              style: GoogleFonts.jua(color: Colors.blueAccent, fontSize: 13)),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
