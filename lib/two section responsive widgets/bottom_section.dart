// Part 3: Bottom Section
// - Bottom Container takes remaining height (use Expanded)
// - Color: Green
// - Inside Bottom Container, add a Row with 2 Flexible widgets
// - Each Flexible contains a Container
// - Colors: Red, Orange
// - Center text: "Left Box", "Right Box"

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout1(),
    ),
  );
}

class ResponsiveLayout1 extends StatefulWidget {
  const ResponsiveLayout1({super.key});

  @override
  State<ResponsiveLayout1> createState() => _ResponsiveLayout1State();
}

class _ResponsiveLayout1State extends State<ResponsiveLayout1> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Layout 1')),

      body: Column(
        children: [
          // Top Section
          Container(
            height: screenHeight * 0.4,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Top Section',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),

          // Bottom Section
          Expanded(
            child: Container(
              color: Colors.green,
              child: Row(
                children: [
                  // Left Box
                  Flexible(
                    child: Container(
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          'Left Box',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),

                  // Right Box
                  Flexible(
                    child: Container(
                      color: Colors.orange,
                      child: const Center(
                        child: Text(
                          'Right Box',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
