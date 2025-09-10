// Part 1: Widget Setup
// - Create a StatefulWidget named "ResponsiveLayout3"
// - Scaffold with AppBar titled "Nested Layout"

// Part 2: Outer Column
// - Column with 2 children
//   - Top Container: 1/3 of screen height (use MediaQuery), color: Purple
//   - Bottom Expanded: takes remaining height

// Part 3: Inner Row
// - Inside Bottom Expanded, add Row with 2 Flexible widgets
// - Each Flexible contains Column with 2 Expanded Containers
// - Colors: (Left: Red, Yellow), (Right: Blue, Green)
// - Center text: "Box 1", "Box 2", "Box 3", "Box 4"

import 'package:flutter/material.dart';

class ResponsiveLayout3 extends StatefulWidget {
  const ResponsiveLayout3({super.key});

  @override
  State<ResponsiveLayout3> createState() => _ResponsiveLayout3State();
}

class _ResponsiveLayout3State extends State<ResponsiveLayout3> {
  @override
  Widget build(BuildContext context) {
    // Get screen height
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: const Text("Nested Layout"), centerTitle: true),
      body: Column(
        children: [
          // Top container (1/3 of screen height)
          Container(
            height: screenHeight / 3,
            color: Colors.purple,
            child: const Center(
              child: Text(
                "Top Purple Area",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),

          // Bottom Expanded area
          Expanded(
            child: Row(
              children: [
                // Left Flexible column
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.red,
                          child: const Center(
                            child: Text(
                              "Box 1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                          child: const Center(
                            child: Text(
                              "Box 2",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Right Flexible column
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          child: const Center(
                            child: Text(
                              "Box 3",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.green,
                          child: const Center(
                            child: Text(
                              "Box 4",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
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
          ),
        ],
      ),
    );
  }
}
