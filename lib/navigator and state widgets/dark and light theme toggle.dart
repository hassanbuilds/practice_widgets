// Q5: Dark/Light Theme Toggle
// Name: theme_toggle.dart
// Requirements:
// - Use a StatefulWidget
// - Add a Switch in AppBar to toggle between Light and Dark Theme
// - Rebuild UI when theme changes

// Q5: Dark/Light Theme Toggle
// Name: theme_toggle.dart
// Requirements:
// - Use a StatefulWidget
// - Add a Switch in AppBar to toggle between Light and Dark Theme
// - Rebuild UI when theme changes

import 'package:flutter/material.dart';

void main() {
  runApp(const ThemeToggleApp());
}

class ThemeToggleApp extends StatefulWidget {
  const ThemeToggleApp({super.key});

  @override
  State<ThemeToggleApp> createState() => _ThemeToggleAppState();
}

class _ThemeToggleAppState extends State<ThemeToggleApp> {
  // 1. State variable for theme
  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Theme Toggle Example"),
          actions: [
            // 2. Switch to toggle theme
            Switch(
              value: _isDark,
              onChanged: (value) {
                setState(() {
                  _isDark = value; // update state
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Text(
            _isDark ? "Dark Mode ON" : "Light Mode ON",
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
