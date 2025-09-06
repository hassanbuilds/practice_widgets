// Q4: dispose Practice
// Requirements:
// - Create a StatefulWidget with a TextEditingController
// - Attach the controller to a TextField
// - Dispose the controller in dispose() method
// - Display the typed value below the TextField

import 'package:flutter/material.dart';

void main() {
  runApp(const DisposePracticeApp());
}

class DisposePracticeApp extends StatelessWidget {
  const DisposePracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DisposePractice());
  }
}

class DisposePractice extends StatefulWidget {
  const DisposePractice({super.key});

  @override
  State<DisposePractice> createState() => _DisposePracticeState();
}

class _DisposePracticeState extends State<DisposePractice> {
  // 1. Create the TextEditingController
  final TextEditingController _controller = TextEditingController();

  String typedText = ""; // Variable to show typed value

  @override
  void initState() {
    super.initState();
    // Optional: Listen to text changes
    _controller.addListener(() {
      setState(() {
        typedText = _controller.text;
      });
    });
  }

  @override
  void dispose() {
    // 2. Dispose the controller to free resources
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dispose Practice")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _controller, // Attach controller
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Type something",
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Typed: $typedText", // Display typed value
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
