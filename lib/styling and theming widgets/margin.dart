// Q6: Margin Example
// Requirements:
// - Create two Containers with different colors
// - Apply margin to one Container to separate them
// - Show difference between margin and padding

import 'package:flutter/material.dart';

class MarginExample extends StatelessWidget {
  const MarginExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Margin Example')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(25),
              child: const Text(
                'This has margin',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(25),
              child: const Text(
                'This has padding',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
