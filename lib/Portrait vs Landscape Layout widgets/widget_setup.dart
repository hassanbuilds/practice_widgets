// Part 1: Widget Setup
// - Create a StatefulWidget named "ResponsiveLayout2"
// - Scaffold with AppBar titled "Orientation Layout"\

// Part 2: Orientation Check
// - Use MediaQuery to detect orientation (portrait or landscape)
// - If portrait:
//    - Column layout: Top Container 50%, Bottom Row 50%
// - If landscape:
//    - Row layout: Left Container 50%, Right Column 50%

// Part 3: Flexible Boxes
// - Use Flexible inside Row or Column to split space equally
// - Add Containers with different colors and center text

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout2(),
    ),
  );
}

class ResponsiveLayout2 extends StatefulWidget {
  const ResponsiveLayout2({super.key});

  @override
  State<ResponsiveLayout2> createState() => _ResponsiveLayout2State();
}

class _ResponsiveLayout2State extends State<ResponsiveLayout2> {
  @override
  Widget build(BuildContext context) {
    // Detect the orientation
    Orientation orientation = MediaQuery.of(context).orientation;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Orientation Layout')),
      body:
          orientation == Orientation.portrait
              ? Column(
                children: [
                  // Top Container (50% height)
                  Container(
                    height: screenHeight * 0.5,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        'Top Container',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                  // Bottom Row (50% height)
                  Expanded(
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            color: Colors.red,
                            child: const Center(
                              child: Text(
                                'Left Box',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            color: Colors.orange,
                            child: const Center(
                              child: Text(
                                'Right Box',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
              : Row(
                children: [
                  // Left Container (50% width)
                  Container(
                    width: screenWidth * 0.5,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        'Left Container',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                  // Right Column (50% width)
                  Expanded(
                    child: Column(
                      children: [
                        Flexible(
                          child: Container(
                            color: Colors.red,
                            child: const Center(
                              child: Text(
                                'Top Box',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            color: Colors.orange,
                            child: const Center(
                              child: Text(
                                'Bottom Box',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
    );
  }
}
