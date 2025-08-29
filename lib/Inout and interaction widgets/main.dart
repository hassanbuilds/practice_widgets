// Q1: Build a “User Registration Form” App
// Requirements:
// - AppBar with title: "User Registration"
// - TextFields: Name, Email, Password
// - DropdownButton: Choose Country (Pakistan, India, USA)
// - Radio Buttons: Select Gender (Male, Female, Other)
// - Checkbox: "I agree to the Terms & Conditions"
// - Switch: "Enable Notifications"
// - ElevatedButton: "Register" (prints form data in console)
// - TextButton: "Already have an account? Login"
// - OutlinedButton: "Clear Form"
// - GestureDetector: Wrap a heart ❤️ icon – double-tap it to toggle like/unlike.

import 'package:flutter/material.dart';

class UserRegistrationApp extends StatelessWidget {
  const UserRegistrationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Registration',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const UserRegistrationApp(),
    );
  }
}

class _UserRegistrationApp extends StatefulWidget {
  const _UserRegistrationApp({super.key});

  @override
  State<_UserRegistrationApp> createState() => __UserRegistrationAppState();
}

class __UserRegistrationAppState extends State<_UserRegistrationApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
