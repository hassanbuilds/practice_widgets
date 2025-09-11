// Q3: Hero Animation Example
// Requirements:
// - Create two screens: HomeScreen and DetailScreen
// - On HomeScreen, display an Image inside a Hero widget with tag "profilePic"
// - On tap, navigate to DetailScreen
// - On DetailScreen, show the same Image in a larger size inside the same Hero tag
// - Observe smooth transition animation between screens

// File: hero_example.dart

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Animation - Home")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetailScreen()),
            );
          },
          child: Hero(
            tag: "profilePic", // Unique Hero tag
            child: ClipOval(
              child: Image.network(
                "https://i.pravatar.cc/150?img=3", // Sample profile picture
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Animation - Detail")),
      body: Center(
        child: Hero(
          tag: "profilePic", // Same Hero tag for smooth transition
          child: ClipOval(
            child: Image.network(
              "https://i.pravatar.cc/150?img=3",
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
