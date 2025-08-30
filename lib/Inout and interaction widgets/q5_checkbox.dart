// Q5: Add a Checkbox
// Requirements:
// - CheckboxListTile with label: "I agree to the Terms & Conditions"
// - Print state (checked/unchecked) in console

import 'dart:ffi';

import 'package:flutter/material.dart';

class CheckboxApp extends StatefulWidget {
  const CheckboxApp({super.key});

  @override
  State<CheckboxApp> createState() => _CheckboxAppState();
}

class _CheckboxAppState extends State<CheckboxApp> {
  bool agreed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('User Registration')),
        body: CheckboxListTile(
          title: Text('I agreed  the terms and condition'),
          value: agreed,
          onChanged: (value) {
            setState(() => agreed = value!);
            debugPrint('Agreed $agreed');
          },
        ),
      ),
    );
  }
}
