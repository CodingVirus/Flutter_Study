import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle extends StatelessWidget {
  const CustomTextStyle(
      {required this.text, required this.fontSize, super.key});

  final String text;
  final double fontSize;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.jua(
        fontSize: fontSize,
        color: Colors.white,
      ),
    );
  }
}
