import 'package:flutter/material.dart';
import 'package:insta_clone/dice_roller.dart';
import 'package:insta_clone/name_style_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  // const GradientContainer.dices({super.key})

  final Color color1;
  final Color color2;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.center,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
