// Q1: AnimatedContainer Advanced Example
// Requirements:
// - Create a StatefulWidget
// - Show an AnimatedContainer in the center of the screen
// - Start with:
//     width = 100
//     height = 100
//     color = Colors.blue
//     borderRadius = 0
// - On button press:
//     - Increase width to 250 and height to 250
//     - Change color to Colors.orange
//     - Add rounded corners (borderRadius = 125)
//     - Apply a shadow using BoxDecoration
// - Animate all changes smoothly over 2 seconds using Curves.easeInOutBack
// - The button text should change to show the current state ("Grow" or "Shrink")
// - Add spacing and style for clean UI

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Animation()));
}

class Animation extends StatefulWidget {
  const Animation({super.key});

  @override
  State<Animation> createState() => _AnimationState();
}

class _AnimationState extends State<Animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer Advance Example'),
        centerTitle: true,
      ),
    );
  }
}
