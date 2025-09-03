// Q1: Navigation Example App
// Requirements:
// - Use MaterialApp and Scaffold
//- Add a HomeScreen with a button "Go to Details"
// - When pressed, navigate to DetailsScreen
// - Pass a string "Hello from Home!" to DetailsScreen
// - Show the string in DetailsScreen

import 'package:flutter/material.dart';

class NavigationExampleApp extends StatelessWidget {
  const NavigationExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) =>
                        const DetailScreen(message: 'Hello form the home'),
              ),
            );
          },
          child: const Text('Go to the detail'),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String message;
  const DetailScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Screen')),
      body: Center(child: Text(message, style: const TextStyle(fontSize: 20))),
    );
  }
}
