// Q5: didUpdateWidget Practice
// Requirements:
// - Create a StatefulWidget that takes a color from parent
// - When parent color changes, print "Color Updated" using didUpdateWidget
// - Display a Container with the current color

import 'package:flutter/material.dart';

void main() {
  runApp(const DidUpdateWidgetApp());
}

class DidUpdateWidgetApp extends StatelessWidget {
  const DidUpdateWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ParentWidget());
  }
}

// ---------------- Parent Widget ----------------
class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  Color currentColor = Colors.blue;

  void _changeColor() {
    setState(() {
      // Toggle between blue and red
      currentColor = currentColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("didUpdateWidget Practice")),
      body: Center(child: ColorfulContainer(color: currentColor)),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeColor,
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}

// ---------------- Child Widget ----------------
class ColorfulContainer extends StatefulWidget {
  final Color color;
  const ColorfulContainer({super.key, required this.color});

  @override
  State<ColorfulContainer> createState() => _ColorfulContainerState();
}

class _ColorfulContainerState extends State<ColorfulContainer> {
  @override
  void didUpdateWidget(covariant ColorfulContainer oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Check if color changed
    if (oldWidget.color != widget.color) {
      print("Color Updated");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: widget.color, // use current color
    );
  }
}
