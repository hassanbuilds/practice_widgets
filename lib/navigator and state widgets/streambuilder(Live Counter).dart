// Q7: StreamBuilder Example (Live Counter)
// Name: streambuilder_example.dart
// Requirements:
// - Use StreamBuilder with a Stream that emits numbers every second
// - Display the live counter on the screen
// - Show CircularProgressIndicator while waiting for first data

// Q7: StreamBuilder Example (Live Counter)
// Name: streambuilder_example.dart
// Requirements:
// - Use StreamBuilder with a Stream that emits numbers every second
// - Display the live counter on the screen
// - Show CircularProgressIndicator while waiting for first data

import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const StreamBuilderApp());
}

class StreamBuilderApp extends StatelessWidget {
  const StreamBuilderApp({super.key});

  // A stream that emits an increasing number every second
  Stream<int> counterStream() {
    return Stream.periodic(const Duration(seconds: 1), (count) => count + 1);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("StreamBuilder Example")),
        body: Center(
          child: StreamBuilder<int>(
            stream: counterStream(),
            builder: (context, snapshot) {
              // While waiting for the first data
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }

              // If error occurs
              if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              }

              // When we have data
              if (snapshot.hasData) {
                return Text(
                  "Counter: ${snapshot.data}",
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                );
              }

              // Default case
              return const Text("No data yet");
            },
          ),
        ),
      ),
    );
  }
}
