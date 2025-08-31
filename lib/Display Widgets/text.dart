// Q1: Create a Text Example app
// Requirements:
// - Use MaterialApp and Scaffold
// - Add an AppBar with title: "Text Example"
// - Display a Text widget in the center with custom font size, color, and weight

import 'package:flutter/material.dart';

class TextPractice extends StatelessWidget {
  const TextPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Text Example')),
        body: const Center(
          child: Text(
            'Hello Flutter',
            style: TextStyle(
              fontSize: 24, // make text bigger
              color: Colors.green, // Text color will be green
              fontWeight: FontWeight.bold, // This will make font bold
            ),
          ),
        ),
      ),
    );
  }
}
