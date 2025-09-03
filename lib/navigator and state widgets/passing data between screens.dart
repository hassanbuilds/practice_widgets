// Q3: Passing Data Between Screens
// Name: passing_data.dart
// Requirements:
// - HomeScreen has a TextField and a button
// - Entered text should be passed to SecondScreen
// - Display the passed text on SecondScreen
import 'package:flutter/material.dart';

void main() {
  runApp(const PassingDataApp());
}

class PassingDataApp extends StatelessWidget {
  const PassingDataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

// ----------------- Home Screen -----------------
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter some text",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String enteredText = _controller.text;

                // Navigate and pass data
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(message: enteredText),
                  ),
                );
              },
              child: const Text("Send to Second Screen"),
            ),
          ],
        ),
      ),
    );
  }
}

// ----------------- Second Screen -----------------
class SecondScreen extends StatelessWidget {
  final String message;

  const SecondScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Center(
        child: Text(
          message,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
