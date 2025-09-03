// Q4: BoxDecoration Example
// Requirements:
// - Create a Container with BoxDecoration
// - Add background color, border, and borderRadius
// - Place a Text widget inside

import 'package:flutter/material.dart';

class BoxDecorationExample extends StatelessWidget {
  const BoxDecorationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('BoxDecorationExample')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black, // backgroundColor
                border: Border.all(color: Colors.green, width: 2),
                borderRadius: BorderRadius.circular(15), // rounded corner
              ),
              child: const Text(
                'BoxDecoration Example!!!!',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
