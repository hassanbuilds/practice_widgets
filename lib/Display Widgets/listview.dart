// Q5: Create a ListView Example app
// Requirements:
// - Use MaterialApp and Scaffold
// - Add an AppBar with title: "ListView Example"
// - Display a vertical ListView with at least 5 ListTile items (each with icon + text)

import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListView Example')),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ListTile(leading: Icon(Icons.person), title: Text('Profile')),
            ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
            ),
            ListTile(leading: Icon(Icons.logout), title: Text('LogOut')),
          ],
        ),
      ),
    );
  }
}
