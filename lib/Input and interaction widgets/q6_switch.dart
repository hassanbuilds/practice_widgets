// Q6: Add a Switch
// Requirements:
// - SwitchListTile with label: "Enable Notifications"
// - Print ON/OFF state when toggled

import 'package:flutter/material.dart';

class SwitchApp extends StatefulWidget {
  const SwitchApp({super.key});

  @override
  State<SwitchApp> createState() => _SwitchAppState();
}

class _SwitchAppState extends State<SwitchApp> {
  bool notification = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('User Registration')),
        body: SwitchListTile(
          title: Text('Enable Notification'),
          value: notification,
          onChanged: (value) {
            setState(() => notification = value);
            debugPrint('Notification $notification');
          },
        ),
      ),
    );
  }
}
