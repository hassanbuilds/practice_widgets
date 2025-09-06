// Q6: Timer Example
// Requirements:
// - Create a StatefulWidget
// - Use Timer.periodic to update a counter every second
// - Cancel the Timer in dispose() method
// - Display the counter in the center

import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: TimerExample()));
}

class TimerExample extends StatefulWidget {
  const TimerExample({super.key});

  @override
  State<TimerExample> createState() => _TimerExampleState();
}

class _TimerExampleState extends State<TimerExample> {
  int counter = 0; // start counter from 0
  Timer? timer; // timer variable to store periodic timer

  @override
  void initState() {
    super.initState();

    // Start the timer when widget is created
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() {
        counter++; // increase counter every second
      });
    });
  }

  @override
  void dispose() {
    // Cancel timer when widget is destroyed
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Timer Example")),
      body: Center(
        child: Text(
          "Counter: $counter",
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
