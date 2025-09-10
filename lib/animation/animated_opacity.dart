// Q2: AnimatedOpacity Example
// Name: animated_opacity_example.dart
// Requirements:
// - Create a StatefulWidget
// - Show a Container with text inside
// - Wrap the container in AnimatedOpacity
// - On button press, toggle opacity between 1.0 and 0.0
// - Duration: 2 seconds (fade in/out effect)

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: AnimatedOpacityExample(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  double _opicty = 11.0;
  void _toggleOpacity() {
    setState(() {
      _opicty = _opicty == 11.0 ? 0.0 : 11.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedOpcaity Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opicty,
              duration: Duration(seconds: 3),
              child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.grey[400],
                child: Text(
                  'Hello, Flutter!',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: _toggleOpacity,
              child: const Text('Toggle Fade'),
            ),
          ],
        ),
      ),
    );
  }
}
