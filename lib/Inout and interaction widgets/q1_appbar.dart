// Q1: Create a basic Flutter app structure
// Requirements:
// - Use MaterialApp and Scaffold
// - Add an AppBar with title: "User Registration"

import 'package:flutter/material.dart';

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('User Registration'))),
    );
  }
}
