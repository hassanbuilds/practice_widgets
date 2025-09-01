// Q6: Create a GridView Example app
// Requirements:
// - Use MaterialApp and Scaffold
// - Add an AppBar with title: "GridView Example"
// - Display a GridView with at least 6 items (each showing an icon and a text label)

import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('GridView Example')),
        body: GridView.count(
          crossAxisCount: 2, // number of columns
          children: const [
            Card(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.home, size: 40), Text('Home')],
                ),
              ),
            ),
            Card(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.person, size: 40), Text('Profile')],
                ),
              ),
            ),
            Card(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.settings, size: 40), Text('Settings')],
                ),
              ),
            ),
            Card(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.email, size: 40), Text('Email')],
                ),
              ),
            ),
            Card(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.phone, size: 40), Text('Phone')],
                ),
              ),
            ),
            Card(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.map, size: 40), Text('Map')],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const GridViewExample());
}
