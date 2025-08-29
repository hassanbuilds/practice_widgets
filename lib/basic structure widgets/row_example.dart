// Q5: Practice Row widget.
// - Create a Scaffold with an AppBar titled "Row Example".
// - Inside the body, place a Row with mainAxisAlignment set to spaceEvenly.
// - Add three Icons as children:
//     - Icons.star (yellow)
//     - Icons.favorite (red)
//     - Icons.thumb_up (blue)

import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Row Example')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.star, color: Colors.yellow, size: 40),
            Icon(Icons.favorite, color: Colors.red, size: 40),
            Icon(Icons.thumb_up_off_alt, color: Colors.blue, size: 40),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(RowExample());
