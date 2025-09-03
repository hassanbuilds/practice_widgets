// Q2: Using Colors
// Requirements:
// - Create a Scaffold with background color
// - Add a Container with a different color
// - Add a Text widget with a custom text color

import 'package:flutter/material.dart';

class ColorExample extends StatelessWidget {
  const ColorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple, // Scaffold background color
        appBar: AppBar(title: Text('Color Example')),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            color: Colors.blue, // container color
            child: Text(
              'Hello Flutter',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white, // custom text color
              ),
            ),
          ),
        ),
      ),
    );
  }
}
