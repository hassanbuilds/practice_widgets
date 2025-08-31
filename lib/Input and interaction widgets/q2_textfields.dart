// Q2: Add TextFields to the form
// Requirements:
// - Add three TextFields inside the body
//   - Name
//   - Email
//   - Password (with obscureText true)

import 'package:flutter/material.dart';

class TextFieldApp extends StatelessWidget {
  const TextFieldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('User Registration')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: const [
              TextField(decoration: InputDecoration(labelText: 'Name')),
              TextField(decoration: InputDecoration(labelText: 'Email')),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
