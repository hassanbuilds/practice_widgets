// Q1: Create a simple Flutter app using MaterialApp and Scaffold.
// - Add an AppBar with the title "Basic Structure App".
// - Inside the body, place a Center widget with a Text widget that says "Hello from Scaffold!".

import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Basic structure app')),
        body: const Center(child: Text('Hello form scaffold')),
      ),
    );
  }
}
