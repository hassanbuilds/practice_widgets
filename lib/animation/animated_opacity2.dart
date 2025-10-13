// Q2: AnimatedOpacity Example
// Requirements:
// - Create a StatefulWidget
// - Show a centered Container with text inside
// - Start with opacity = 1.0 (fully visible)
// - On button press:
//   - Toggle opacity between 1.0 and 0.0 (fade in / fade out)
// - Animate the opacity over 2 seconds using Curves.easeInOut
// - Button text should change to show the current state ("Hide" or "Show")
// - Add spacing, padding, and style for a clean UI


import 'package:flutter/material.dart';

void mian() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false));
}

class AnimationOpacity extends StatefulWidget {
  const AnimationOpacity({super.key});

  @override
  State<AnimationOpacity> createState() => _AnimationOpacityState();
}

class _AnimationOpacityState extends State<AnimationOpacity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Animated Opacity Example'),
        ),
    ,
    );
  }
}
