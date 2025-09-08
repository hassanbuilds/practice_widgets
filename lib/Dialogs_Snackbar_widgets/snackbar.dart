// Q3: Snackbar Example
// Requirements:
// - Create a StatefulWidget with a button "Save"
// - On pressing the button, show a Snackbar with the message "Data saved successfully"
// - The Snackbar should stay for 3 seconds
// - Use ScaffoldMessenger.of(context) to show the Snackbar

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SnackbarExample(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class SnackbarExample extends StatefulWidget {
  const SnackbarExample({super.key});

  @override
  State<SnackbarExample> createState() => _SnackbarExampleState();
}

class _SnackbarExampleState extends State<SnackbarExample> {
  void _showSnackbar() {
    // Create the Snackbar
    final snackBar = SnackBar(
      content: const Text("Data saved successfully"),
      duration: const Duration(seconds: 3), // stays for 3 seconds
    );

    // Show the Snackbar using ScaffoldMessenger
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Snackbar Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: _showSnackbar,
          child: const Text("Save"),
        ),
      ),
    );
  }
}
