// Q6: Create a GridView Example app
// Requirements:
// - Use MaterialApp and Scaffold
// - Add an AppBar with title: "GridView Example"
// - Display a GridView with at least 6 items (each showing an icon and a text label)



import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView Example'),
        ),
        body: Gridview.count(
          CrossAxisAlignment:sqrt1_2
          ch
        ),
      ),
    );
  }
}