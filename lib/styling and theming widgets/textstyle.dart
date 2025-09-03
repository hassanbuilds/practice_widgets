// Q3: TextStyle Example
// Requirements:
// - Display 3 Text widgets with different styles (fontSize, fontWeight, color)
// - Use GoogleFonts or default TextStyle

import 'package:flutter/material.dart';

class TextStyleExmaple extends StatelessWidget {
  const TextStyleExmaple({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('TextStyle Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Hey this is Hassan',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              Text(
                'whats going on??',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.lightGreen,
                ),
              ),
              Text(
                'Can you tell me what time it is right now?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
