// Part 1: Widget Setup
// - Create a StatefulWidget named "ResponsiveLayout1"
// - Scaffold with AppBar titled "Responsive Layout 1"

import 'package:flutter/material.dart';

class ResponsiveLayout1 extends StatefulWidget {
  const ResponsiveLayout1({super.key});

  @override
  State<ResponsiveLayout1> createState() => _ResponsiveLayout1State();
}

class _ResponsiveLayout1State extends State<ResponsiveLayout1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('Responsive Layouut 1'))),
    );
  }
}
