// Q3: GridView.builder Example
// Requirements:
// - Create a GridView.builder with 12 items
// - Each item should be a Container with a background color and a centered number
// - Set the grid to have 3 columns
// - Make the GridView scrollable vertically
import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('GridView.builder Example')),
        body: GridView.builder(
          itemCount: 12, // total items
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 columns
            crossAxisSpacing: 10, // spacing between columns
            mainAxisSpacing: 10, // spacing between rows
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue[100 * ((index % 8) + 1)], // different shades
              child: Center(
                child: Text(
                  '${index + 1}', // show number
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
