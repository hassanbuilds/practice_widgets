// Q7: BorderRadius Example
// Requirements:
// - Create a Container with rounded corners using BorderRadius
// - Show 2 Containers: one with circular corners, one with only top corners rounded

import 'package:flutter/material.dart';

class BorderRadiusExample extends StatelessWidget {
  const BorderRadiusExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('BorderRadius Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First container - circular corners
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20), // all corners
                ),
                child: const Center(
                  child: Text(
                    "All Corners Rounded",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Second container - only top corners rounded
              Container(
                width: 200,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Only Top Corners",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
