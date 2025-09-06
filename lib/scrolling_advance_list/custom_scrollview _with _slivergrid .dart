// Q5: CustomScrollView with SliverGrid Example
// Requirements:
// - Use CustomScrollView with a SliverAppBar and SliverGrid
// - SliverAppBar should have a title and pinned behavior
// - SliverGrid should have 8 items, 2 columns, and display colored Containers with text
// - Make sure grid scrolls smoothly with the app bar

import 'package:flutter/material.dart';

class CustomScrollExample extends StatelessWidget {
  const CustomScrollExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            // SliverAppBar
            SliverAppBar(
              pinned: true, // keeps app bar visible when scrolling
              expandedHeight: 150,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Sliver Grid Example'),
                background: Container(color: Colors.orangeAccent),
              ),
            ),

            // SliverGrid
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 columns
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    color: Colors.blue[(index + 1) * 100],
                    child: Center(child: Text('Item ${index + 1}')),
                  );
                },
                childCount: 8, // total 8 items
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const CustomScrollExample());
}
