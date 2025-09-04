// Q5: Padding Example
// Requirements:
// - Create a Container with padding around its child
// - Inside the Container, add a Text widget
// - Show how padding changes spacing inside the box

import 'package:flutter/material.dart';

class PaddingExample extends StatelessWidget {
  const PaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Padding Example')),
        body: Container(
          color: Colors.black,
          padding: EdgeInsets.all(25),
          child: Text(
            'Hey buddy where are you from??',
            style: TextStyle(fontSize: 24, color: Colors.pinkAccent),
          ),
        ),
      ),
    );
  }
}
