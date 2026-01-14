// Q2: Create an Image Example app
// Requirements:
// - Use MaterialApp and Scaffold
// - Add an AppBar with title: "Image Example"
// - Display an Image widget (from assets or network) in the body

/*import 'package:flutter/material.dart';

class AddingImage extends StatelessWidget {
  const AddingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(' Image Example')),
        body: Image.network(
          'https://avatars.githubusercontent.com/u/219761786?v=4&size=64',
          height: 100,
          width: 100,
          fit: BoxFit.cover, // Zoom/crops to Fill
        ),
      ),
    );
  }
}*/
//                Container Example

import 'package:flutter/material.dart';

class Containerr extends StatelessWidget {
  const Containerr({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Container Example')),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Text(
              'This is a Container Widget',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
