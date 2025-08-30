import 'package:flutter/material.dart';

void main() {
  runApp(const Q7ElevatedButtonApp());
}

class Q7ElevatedButtonApp extends StatelessWidget {
  const Q7ElevatedButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Hassan";
    String email = "hassan@example.com";

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("User Registration")),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              debugPrint("Registering user: $name, $email");
            },
            child: const Text("Register"),
          ),
        ),
      ),
    );
  }
}
