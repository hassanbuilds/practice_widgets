// Q2: BottomSheet Example
// Requirements:
// - Create a StatefulWidget with a button "Show Options"
// - When pressed, show a ModalBottomSheet
// - Inside the BottomSheet, add two ListTiles: "Share" and "Delete"
// - On tapping each option, close the BottomSheet and print the selected option in console

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: BottomSheetExample(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({super.key});

  @override
  State<BottomSheetExample> createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  void _showOptions() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min, // makes sheet fit content
          children: [
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text("Share"),
              onTap: () {
                Navigator.pop(context); // close bottom sheet
                print("Share tapped");
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text("Delete"),
              onTap: () {
                Navigator.pop(context); // close bottom sheet
                print("Delete tapped");
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BottomSheet Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: _showOptions,
          child: const Text("Show Options"),
        ),
      ),
    );
  }
}
