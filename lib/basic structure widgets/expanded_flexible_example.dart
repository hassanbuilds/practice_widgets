import 'package:flutter/material.dart';

class ExpandedFlexibleExample extends StatelessWidget {
  const ExpandedFlexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Expanded & Flexible Example")),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text(
                  "Expanded 1",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text(
                  "Flexible",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text(
                  "Expanded 2",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(const ExpandedFlexibleExample());
