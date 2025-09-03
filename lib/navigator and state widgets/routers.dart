// Q2: Named Routes Example
// Name: named_routes.dart
// Requirements:
// - Define named routes in MaterialApp ("/", "/second")
// - HomeScreen should navigate to SecondScreen using Navigator.pushNamed
// - Add a back button on SecondScreen to return to HomeScreen

import 'package:flutter/material.dart';

void main() {
  runApp(const NamedRoutesApp());
}

class NamedRoutesApp extends StatelessWidget {
  const NamedRoutesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Define all named routes here
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to second screen using named route
            Navigator.pushNamed(context, '/second');
          },
          child: const Text("Go to Second Screen"),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Pop the current screen → back to HomeScreen
            Navigator.pop(context);
          },
          child: const Text("Back to Home Screen"),
        ),
      ),
    );
  }
}
