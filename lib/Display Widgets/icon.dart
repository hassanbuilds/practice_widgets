// Q3: Create an Icon Example app
// Requirements:
// - Use MaterialApp and Scaffold
// - Add an AppBar with title: "Icon Example"
// - Display an Icon widget in the center with custom size and color

import 'package:flutter/material.dart';

class IconExample extends StatelessWidget {
  const IconExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Icon Example')),
        body: const Center(
          child: Icon(
            Icons.monetization_on_sharp,
            size: 54,
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}
