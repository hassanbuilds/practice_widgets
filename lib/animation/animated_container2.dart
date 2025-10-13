// Q1: AnimatedContainer Advanced Example
// Requirements:
// - Create a StatefulWidget
// - Show an AnimatedContainer in the center of the screen
//  - Start with:
// width = 100
//  height = 100
// color = Colors.blue
// borderRadius = 0
// - On button press:
// - Increase width to 250 and height to 250
// - Change color to Colors.orange
// - Add rounded corners (borderRadius = 125) //
// - Apply a shadow using BoxDecoration
// - Animate all changes smoothly over 2 seconds using Curves.easeInOutBack
// - The button text should change to show the current state ("Grow" or "Shrink")
// - Add spacing and style for clean UI

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: AnimatedBox()));
}

class AnimatedBox extends StatefulWidget {
  const AnimatedBox({super.key});

  @override
  State<AnimatedBox> createState() => _AnimatedBoxState();
}

class _AnimatedBoxState extends State<AnimatedBox> {
  double _width = 100.0;
  double _height = 100.0;
  bool _isExpanded = false;

  BoxDecoration _boxDecoration = BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(0),
    boxShadow: [],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer Advanced Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOutBack,
              width: _width,
              height: _height,
              decoration: _boxDecoration,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 14,
                ),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                setState(() {
                  if (_isExpanded) {
                    // Shrink
                    _width = 100;
                    _height = 100;
                    _boxDecoration = BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(0),
                      boxShadow: [],
                    );
                  } else {
                    // Grow
                    _width = 250;
                    _height = 250;
                    _boxDecoration = BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(125),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange,
                          blurRadius: 0,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    );
                  }
                  _isExpanded = !_isExpanded;
                });
              },
              child: Text(_isExpanded ? "Shrink" : "Grow"),
            ),
          ],
        ),
      ),
    );
  }
}
