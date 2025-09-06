// Q1: Stateless Counter Display
// Requirements:
// - Create a StatelessWidget that displays a counter value passed via constructor
// - Display the counter in the center
// - Observe that clicking a button outside won't change this counter

import 'package:flutter/material.dart';

// StatelessWidget to display counter
class CounterDisplay extends StatelessWidget {
  final int counter; // counter received from parent

  const CounterDisplay({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Counter: $counter', style: const TextStyle(fontSize: 30)),
    );
  }
}

// Parent to test external changes
class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stateless Counter Display')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterDisplay(counter: counter), // stateless child
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counter++; // changing value in parent
                // Note: StatelessWidget will not update automatically
                // Uncomment next line to rebuild the parent and update child
                // setState(() {});
              },
              child: const Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const ParentWidget());
}
