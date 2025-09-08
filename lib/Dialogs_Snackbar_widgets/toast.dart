// Q4: Toast Example
// Requirements:
// - Create a StatefulWidget with a button "Show Toast"
// - On pressing the button, display a Toast with the message "This is a Toast message"
// - Use the fluttertoast package
// - Toast should appear at the bottom of the screen for a short duration

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(
    const MaterialApp(home: ToastExample(), debugShowCheckedModeBanner: false),
  );
}

class ToastExample extends StatefulWidget {
  const ToastExample({super.key});

  @override
  State<ToastExample> createState() => _ToastExampleState();
}

class _ToastExampleState extends State<ToastExample> {
  void _showToast() {
    Fluttertoast.showToast(
      msg: "This is a Toast message",
      toastLength: Toast.LENGTH_SHORT, // short duration
      gravity: ToastGravity.BOTTOM, // show at bottom
      backgroundColor: Colors.black87,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Toast Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: _showToast,
          child: const Text("Show Toast"),
        ),
      ),
    );
  }
}
