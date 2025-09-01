// Q4: Create a Card Example app
// Requirements:
// - Use MaterialApp and Scaffold
// - Add an AppBar with title: "Card Example"
// - Display a Card widget containing a ListTile (with leading icon, title, and subtitle)

import 'package:flutter/material.dart';

class CradExample extends StatelessWidget {
  const CradExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Card Example')),
        body: ListView(
          children: const [
            Card(
              elevation: 4, // shadow
              margin: EdgeInsets.all(16), // space around
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Hassan'),
                subtitle: Text('Software developer'),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text('mhassan.codes@gmail.com'),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
                subtitle: Text('+923217070289'),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Location'),
                subtitle: Text('Lahore'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.work),
                title: Text('Flutter Developer'),
                subtitle: Text('Expereinece 2 years'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
