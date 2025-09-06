// Q2: Stateful Counter Increment
// Requirements:
// - Create a StatefulWidget with an integer counter
// - Add a FloatingActionButton to increment counter
// - Use setState to update UI
// - Display counter in the center

/*import 'package:flutter/material.dart';

void main() {
  runApp(const CounterIncrement());
}

class CounterIncrement extends StatefulWidget {
  const CounterIncrement({super.key});

  @override
  State<CounterIncrement> createState() => _CounterIncrementState();
}

class _CounterIncrementState extends State<CounterIncrement> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Counter Increment'),
          centerTitle: true,
        ),
        body: Text('$counter', style: TextStyle(fontSize: 20)),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}*/
