// Part 1: Widget Setup
// - Create a StatefulWidget named "ResponsiveLayout2"
// - Scaffold with AppBar titled "Orientation Layout"

import 'package:flutter/material.dart';

class ResponsiveLayout2 extends StatefulWidget {
  const ResponsiveLayout2({super.key});

  @override
  State<ResponsiveLayout2> createState() => _ResponsiveLayout2State();
}

class _ResponsiveLayout2State extends State<ResponsiveLayout2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('Orientation Layout'))),
    );
  }
}
