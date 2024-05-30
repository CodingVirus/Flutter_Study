import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.lightGreen,
            ],
          ),
        ),
        child: const Center(
          child: Text('Hi'),
        ),
      ),
    ),
  ));
}
