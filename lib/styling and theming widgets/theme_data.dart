// Q1: App with ThemeData
// Requirements:
// - Create a MaterialApp with ThemeData
// - Define primaryColor, scaffoldBackgroundColor, and textTheme
// - Display a Text widget styled from the theme

import 'package:flutter/material.dart';

void main() {
  runApp(const ThemeDataExample());
}

class ThemeDataExample extends StatelessWidget {
  const ThemeDataExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.grey,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

// --------------------- Home Screen -------------------

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Data Example'),
        backgroundColor: Theme.of(context).primaryColor, // using theme color
      ),
      body: Center(
        child: Text(
          'Hello with the theme',
          style:
              Theme.of(context).textTheme.bodyLarge, // using theme text style
        ),
      ),
    );
  }
}
