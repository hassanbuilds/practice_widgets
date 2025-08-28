// Q3: Practice Container widget.
// - Create a Scaffold with an AppBar titled "Container Example".
// - Inside the body, place a Container:
//     - Width: 200, Height: 100
//     - Background color: Blue
//     - Center a Text widget inside saying "Inside Container" with white color.

import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Container App')),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text(
              'Inside Container',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(ContainerExample());
