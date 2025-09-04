// Q2: ListView.builder Example
// Requirements:
// - Create a ListView.builder that shows 20 list items
// - Each item should be a Card with a title (e.g., "Item 1") and subtitle (e.g., "Subtitle 1")
// - Add a leading icon for each item
// - Make the ListView scrollable

import 'package:flutter/material.dart';

class ListViewbuilderExample extends StatelessWidget {
  const ListViewbuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('List View Builder')),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(16),
              child: ListTile(
                leading: const Icon(Icons.star),
                title: Text('Item ${index + 1}'),
                subtitle: Text('Subtitle ${index + 1}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
