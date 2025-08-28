// Q2: Practice AppBar widget.
// - Create a Scaffold with an AppBar.
// - Set the AppBar title to "AppBar Example" and center it.
// - Add an IconButton in the actions (icon: Icons.search).
// - Inside the body, display a Text widget "AppBar in Action" centered.

import 'package:flutter/material.dart';

class AppbarExample extends StatelessWidget {
  const AppbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Appbar Example'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                debugPrint('Search button assign');
              },
            ),
          ],
        ),
        body: const Center(child: Text('Appbar in action')),
      ),
    );
  }
}
