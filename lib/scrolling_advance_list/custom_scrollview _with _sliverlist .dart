// Q4: CustomScrollView with SliverList Example
// Requirements:
// - Use CustomScrollView with a SliverAppBar and SliverList
// - SliverAppBar should have a title and expand on scroll
// - SliverList should display 15 list items with Card widgets
// - Each Card should have a title and a subtitle

import 'package:flutter/material.dart';

class CustomScrollViewExample extends StatelessWidget {
  const CustomScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            // SliverAppBar (collapsible app bar)
            SliverAppBar(
              expandedHeight: 200, // height when expanded
              flexibleSpace: FlexibleSpaceBar(
                title: const Text('SliverAppBar Example'),
                background: Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Icon(
                      Icons.flutter_dash,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              pinned: true, // keeps appbar visible when scrolling
            ),

            // SliverList (list items)
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('Item ${index + 1}'),
                      subtitle: Text('Subtitle for item ${index + 1}'),
                    ),
                  );
                },
                childCount: 15, // total items
              ),
            ),
          ],
        ),
      ),
    );
  }
}
