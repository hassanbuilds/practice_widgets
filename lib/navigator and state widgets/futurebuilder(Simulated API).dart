// Q6: FutureBuilder Example (Simulated API)
// Name: futurebuilder_example.dart
// Requirements:
// - Use FutureBuilder to simulate fetching data with Future.delayed
// - While loading → show CircularProgressIndicator
// - When data loads → display a ListView of items

import 'package:flutter/material.dart';

void main() {
  runApp(const FutureBuilderApp());
}

class FutureBuilderApp extends StatelessWidget {
  const FutureBuilderApp({super.key});

  // Simulated API function
  Future<List<String>> fetchItems() async {
    await Future.delayed(const Duration(seconds: 2)); // simulate delay
    return List.generate(10, (index) => "Item ${index + 1}");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("FutureBuilder Example")),
        body: FutureBuilder<List<String>>(
          future: fetchItems(),
          builder: (context, snapshot) {
            // 1. Loading state
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            // 2. Error state
            if (snapshot.hasError) {
              return Center(child: Text("Error: ${snapshot.error}"));
            }

            // 3. Data loaded
            if (snapshot.hasData) {
              final items = snapshot.data!;
              return ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.star),
                    title: Text(items[index]),
                  );
                },
              );
            }

            // 4. Default case
            return const Center(child: Text("No data available"));
          },
        ),
      ),
    );
  }
}
