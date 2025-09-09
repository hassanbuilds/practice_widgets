// Part 2: Top Section
// - Top Container should take 40% of screen height (use MediaQuery)
// - Color: Blue
// - Center text: "Top Section"

import 'package:flutter/material.dart';

class ResponsiveLayout1 extends StatefulWidget {
  const ResponsiveLayout1({super.key});

  @override
  State<ResponsiveLayout1> createState() => _ResponsiveLayout1State();
}

class _ResponsiveLayout1State extends State<ResponsiveLayout1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Responsive Layouut 1')),

        // Top Section
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Top Section',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
