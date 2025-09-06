// Q7: Stateless vs Stateful Comparison
// Requirements:
// - Create a parent StatefulWidget with a counter
// - Pass counter to a StatelessWidget child to display it
// - Update counter in parent and observe how StatelessWidget rebuilds

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ParentWidget()));
}

// Parent is Stateful (because counter changes)
class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stateless vs Stateful Example")),
      body: Center(
        //  Pass data (counter) to child
        child: CounterDisplay(count: counter),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}

// Child is Stateless (just shows what parent sends)
class CounterDisplay extends StatelessWidget {
  final int count;

  const CounterDisplay({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Text("Counter: $count", style: const TextStyle(fontSize: 24));
  }
}
