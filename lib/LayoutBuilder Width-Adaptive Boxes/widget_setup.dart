// Part 1: Widget Setup
// - Create a StatefulWidget named "ResponsiveLayout4"
// - Scaffold with AppBar titled "Width Adaptive"

// Part 2: Full Screen Container
// - Container with color: LightGray
// - Use LayoutBuilder to get maxWidth

// Part 3: Row of Boxes
// - Row with 3 Flexible widgets
// - Width of each box adapts based on LayoutBuilder constraints
// - Colors: Red, Orange, Yellow
// - Center text: "Box 1", "Box 2", "Box 3"

import 'package:flutter/material.dart';

class ResponsiveLayout4 extends StatefulWidget {
  const ResponsiveLayout4({super.key});

  @override
  State<ResponsiveLayout4> createState() => _ResponsiveLayout4State();
}

class _ResponsiveLayout4State extends State<ResponsiveLayout4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Width Adaptive"), centerTitle: true),
      body: Container(
        color: Colors.grey[300], // LightGray background
        width: double.infinity,
        height: double.infinity,
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Get max width
            double maxWidth = constraints.maxWidth;

            return Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    width: maxWidth / 3,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        "Box 1",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: maxWidth / 3,
                    color: Colors.orange,
                    child: const Center(
                      child: Text(
                        "Box 2",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: maxWidth / 3,
                    color: Colors.yellow,
                    child: const Center(
                      child: Text(
                        "Box 3",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
