// Q8: Add a TextButton
// Requirements:
// - TextButton with label: "Already have an account? Login"
// - On press → show SnackBar: "Redirecting to Login..."

import 'package:flutter/material.dart';

class TextbuttonAPP extends StatefulWidget {
  const TextbuttonAPP({super.key});

  @override
  State<TextbuttonAPP> createState() => _TextbuttonAPPState();
}

class _TextbuttonAPPState extends State<TextbuttonAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('User Registration')),
        body: Center(
          child: Builder(
            builder:
                (context) => TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Redirecting to Login...')),
                    );
                  },
                  child: const Text('Already have an account? Login'),
                ),
          ),
        ),
      ),
    );
  }
}
