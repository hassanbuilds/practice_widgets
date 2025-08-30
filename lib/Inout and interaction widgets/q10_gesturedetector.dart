// Q10: Add a GestureDetector
// Requirements:
// - Add a ❤ (heart) Icon
// - Wrap with GestureDetector
// - On double tap → toggle between red (liked) and grey (unliked)

import 'package:flutter/material.dart';

class GestureDetectorApp extends StatefulWidget {
  const GestureDetectorApp({super.key});

  @override
  State<GestureDetectorApp> createState() => _GestureDetectorAppState();
}

class _GestureDetectorAppState extends State<GestureDetectorApp> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('User Registration')),
        body: Center(
          child: GestureDetector(
            onDoubleTap: () {
              setState(() => liked = !liked);
            },
            child: Icon(
              Icons.favorite,
              color: liked ? Colors.red : Colors.grey,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
