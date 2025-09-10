// Q1: AnimatedContainer Example
// Requirements:
// - Create a StatefulWidget
// - Show an AnimatedContainer with width and height 100
// - On button press, change width to 200 and color to green
// - Animate smoothly over 1 second

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: AnimatedContainerExample(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double _width = 100;
  Color _color = Colors.blueGrey;

  void _animatedBox() {
    setState(() {
      _width = _width == 100 ? 200 : 100;
      _color == Colors.blueGrey ? Colors.green : Colors.blueGrey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedContainer Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              color: _color,
              height: 100,
              duration: Duration(seconds: 1), // Animation Durtaion
              curve: Curves.easeInOut, // Smoothe animation Curve
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _animatedBox,
              child: const Text('Animate Container'),
            ),
          ],
        ),
      ),
    );
  }
}
