// Q4: Counter App with setState
// Name: counter_state.dart
// Requirements:
// - Create a StatefulWidget
// - Show a counter value in the center
// - Add "+" and "-" buttons to increase/decrease counter using setState

import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}

// ----------------- Counter Screen -----------------
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0; // initial value

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App")),
      body: Center(
        child: Text(
          '$_counter',
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _decrement,
            heroTag: "decrement",
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: _increment,
            heroTag: "increment",
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
