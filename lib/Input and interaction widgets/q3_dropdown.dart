// Q3: Add DropdownButton for country selection
// Requirements:
// - DropdownButton with options: Pakistan, India, USA
// - Show the selected country below it
import 'package:flutter/material.dart';

void main() {
  runApp(const Q3DropdownApp());
}

class Q3DropdownApp extends StatefulWidget {
  const Q3DropdownApp({super.key});

  @override
  State<Q3DropdownApp> createState() => _Q3DropdownAppState();
}

class _Q3DropdownAppState extends State<Q3DropdownApp> {
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("User Registration")),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              DropdownButton<String>(
                hint: const Text("Choose Country"),
                value: selectedCountry,
                items:
                    ["Pakistan", "India", "USA"]
                        .map(
                          (country) => DropdownMenuItem(
                            value: country,
                            child: Text(country),
                          ),
                        )
                        .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value;
                  });
                },
              ),
              Text("Selected: ${selectedCountry ?? "None"}"),
            ],
          ),
        ),
      ),
    );
  }
}
