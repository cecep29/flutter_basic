import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Style'),
        ),
        body: const Center(
          child: Text(
            'Belajar TextStyle',
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'CrashLanding',
                decoration: TextDecoration.overline,
                decorationColor: Colors.red,
                decorationThickness: 5),
          ),
        ),
      ),
    );
  }
}
