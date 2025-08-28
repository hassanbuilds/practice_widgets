// Q4: Practice Column widget.
// - Create a Scaffold with an AppBar titled "Column Example".
// - Inside the body, place a Column with mainAxisAlignment set to center.
// - Add three Text widgets as children: "Item 1", "Item 2", "Item 3".

import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Column Exmaple')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('Item 1'), Text('Item 2'), Text('Icon 3')],
        ),
      ),
    );
  }
}

void main() => runApp(ColumnExample());
