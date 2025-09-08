// Q1: AlertDialog Example
// Requirements:
// - Create a StatefulWidget with a button "Delete Item"
// - When pressed, show an AlertDialog asking "Are you sure you want to delete this item?"
// - The dialog should have two buttons: "Cancel" (just close dialog) and "Delete" (show a print message in console)
// - After closing the dialog, return back to the main screen

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlertDialogExample(),
    );
  }
}

class AlertDialogExample extends StatefulWidget {
  const AlertDialogExample({super.key});

  @override
  State<AlertDialogExample> createState() => _AlertDialogExampleState();
}

class _AlertDialogExampleState extends State<AlertDialogExample> {
  void _showDeleteDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete Item"),
          content: const Text("Are you sure you want to delete this item?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // just close the dialog
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                print("Item deleted"); // print message in console
                Navigator.pop(context); // close dialog and return
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AlertDialog Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: _showDeleteDialog,
          child: const Text("Delete Item"),
        ),
      ),
    );
  }
}
