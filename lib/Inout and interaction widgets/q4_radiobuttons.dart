// Q4: Add Radio Buttons for gender selection
// Requirements:
// - Add three RadioListTile widgets: Male, Female, Other
// - Show the selected gender in a Text widget

import 'package:flutter/material.dart';

class RadioAPP extends StatefulWidget {
  const RadioAPP({super.key});

  @override
  State<RadioAPP> createState() => _RadioAPPState();
}

class _RadioAPPState extends State<RadioAPP> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('User Registration')),
        body: Column(
          children: [
            RadioListTile(
              title: const Text('MALE'),
              value: 'Male',
              groupValue: gender,
              onChanged: (value) => setState(() => gender = value),
            ),
            RadioListTile(
              title: Text('Female'),
              value: 'Female',
              groupValue: gender,
              onChanged: (value) => setState(() => gender = value),
            ),
            RadioListTile(
              title: Text('Other'),
              value: 'other',
              groupValue: gender,
              onChanged: (value) => setState(() => gender = value),
            ),
          ],
        ),
      ),
    );
  }
}
