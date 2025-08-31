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

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationScreen(),
    );
  }
}

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // Step 2: Add state variables
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _selectedCountry;
  String? _selectedGender;
  bool _agreeTerms = false;
  bool _notificationsEnabled = false;
  bool _isLiked = false;

  void _register() {
    if (_nameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _selectedCountry == null ||
        _selectedGender == null ||
        !_agreeTerms) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("⚠️ Please complete all fields and agree to terms"),
        ),
      );
      return;
    }

    // Print form data
    print("Name: ${_nameController.text}");
    print(" Email: ${_emailController.text}");
    print(" Password: ${_passwordController.text}");
    print(" Country: $_selectedCountry");
    print(" Gender: $_selectedGender");
    print(" Notifications: $_notificationsEnabled");

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text(" Registration Successful!")));
  }

  void _clearForm() {
    setState(() {
      _nameController.clear();
      _emailController.clear();
      _passwordController.clear();
      _selectedCountry = null;
      _selectedGender = null;
      _agreeTerms = false;
      _notificationsEnabled = false;
      _isLiked = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Registration"), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextFields
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
            ),

            const SizedBox(height: 20),

            // Dropdown (Country)
            const Text("Choose Country"),
            DropdownButton<String>(
              value: _selectedCountry,
              hint: const Text("Select Country"),
              items: const [
                DropdownMenuItem(value: "Pakistan", child: Text("Pakistan")),
                DropdownMenuItem(value: "India", child: Text("India")),
                DropdownMenuItem(value: "USA", child: Text("USA")),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedCountry = value;
                });
              },
            ),

            const SizedBox(height: 20),

            // Radio Buttons (Gender)
            const Text("Select Gender"),
            Row(
              children: [
                Radio<String>(
                  value: "Male",
                  groupValue: _selectedGender,
                  onChanged: (val) {
                    setState(() => _selectedGender = val);
                  },
                ),
                const Text("Male"),
                Radio<String>(
                  value: "Female",
                  groupValue: _selectedGender,
                  onChanged: (val) {
                    setState(() => _selectedGender = val);
                  },
                ),
                const Text("Female"),
                Radio<String>(
                  value: "Other",
                  groupValue: _selectedGender,
                  onChanged: (val) {
                    setState(() => _selectedGender = val);
                  },
                ),
                const Text("Other"),
              ],
            ),

            const SizedBox(height: 20),

            // Checkbox
            Row(
              children: [
                Checkbox(
                  value: _agreeTerms,
                  onChanged: (val) {
                    setState(() => _agreeTerms = val ?? false);
                  },
                ),
                const Expanded(
                  child: Text("I agree to the Terms & Conditions"),
                ),
              ],
            ),

            // Switch
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Enable Notifications"),
                Switch(
                  value: _notificationsEnabled,
                  onChanged: (val) {
                    setState(() => _notificationsEnabled = val);
                  },
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Buttons
            ElevatedButton(onPressed: _register, child: const Text("Register")),
            TextButton(
              onPressed: () {
                print("Redirecting to Login...");
              },
              child: const Text("Already have an account? Login"),
            ),
            OutlinedButton(
              onPressed: _clearForm,
              child: const Text("Clear Form"),
            ),

            const SizedBox(height: 30),

            // GestureDetector (Heart Icon)
            GestureDetector(
              onDoubleTap: () {
                setState(() {
                  _isLiked = !_isLiked;
                });
              },
              child: Icon(
                _isLiked ? Icons.favorite : Icons.favorite_border,
                size: 40,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
