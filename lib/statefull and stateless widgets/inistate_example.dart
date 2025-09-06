// Q3: initState Practice
// Requirements:
// - Create a StatefulWidget
// - Initialize a String variable in initState
// - Display the String in a Text widget
// - Add a button to change the String using setState

import 'package:flutter/material.dart';

class InitStatePractice extends StatefulWidget {
  const InitStatePractice({super.key});

  @override
  State<InitStatePractice> createState() => _InitStatePracticeState();
}

class _InitStatePracticeState extends State<InitStatePractice> {
  String message = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: InitStatePractice());
  }
}

class InitStateState extends StatefulWidget {
  const InitStateState({super.key});

  @override
  State<InitStateState> createState() => _InitStateStateState();
}

class _InitStateStateState extends State<InitStateState> {
  String message = '';
  @override
  void initState() {
    super.initState();
    message = 'Hello from initstate!!!';
  }

  void _chnageMessage() {
    setState(() {
      message = 'Button is pressed!!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('initstate practice')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message, style: const TextStyle(fontSize: 24)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _chnageMessage,
                child: const Text('Message chnaged!!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
