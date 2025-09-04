// Q8: Shadows Example
// Requirements:
// - Create a Container with BoxDecoration and boxShadow
// - Add a Text widget inside
// - Show shadow effect clearly on light background

import 'package:flutter/material.dart';

class ShadowExample extends StatelessWidget {
  const ShadowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Shadow Example')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 10,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Shadow Box',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
