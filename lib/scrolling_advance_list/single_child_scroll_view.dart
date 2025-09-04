// Q1: SingleChildScrollView Example
// Requirements:
// - Create a Column with 10+ Container widgets of different colors and heights
// - Wrap the Column inside a SingleChildScrollView
// - Make the screen scrollable vertically
// - Add padding around each Container

import 'package:flutter/material.dart';

class SingleChildScrollViewExample extends StatelessWidget {
  const SingleChildScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('SingleChildScrollView')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 100, color: Colors.blue),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 120, color: Colors.green),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 140, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 160, color: Colors.purple),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 180, color: Colors.orange),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 200, color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 220, color: Colors.yellow),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 240, color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 260, color: Colors.brown),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 280, color: Colors.cyan),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
