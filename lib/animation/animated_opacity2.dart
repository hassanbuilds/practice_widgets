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
