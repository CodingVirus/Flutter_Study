import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.lightGreen,
            ],
            begin: Alignment.topLeft,
            end: Alignment.center,
          ),
        ),
        child: const Center(
          child: Text(
            'hi',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ),
      ),
    ),
  ));
}
