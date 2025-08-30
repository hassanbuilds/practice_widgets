// Q9: Add an OutlinedButton
// Requirements:
// - OutlinedButton with label: "Clear Form"
// - On press → reset all form fields to default values

import 'package:flutter/material.dart';

class OutlineButton extends StatefulWidget {
  const OutlineButton({super.key});

  @override
  State<OutlineButton> createState() => _OutlineButtonState();
}

class _OutlineButtonState extends State<OutlineButton> {
  String? text = 'Default';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('User Registration')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('text'),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  text = 'Default';
                });
              },
              child: const Text('Clear form'),
            ),
          ],
        ),
      ),
    );
  }
}
