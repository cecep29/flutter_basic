import 'dart:math';

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
        title: const Text('Spacer'),
      ),
      body: Row(
        children: [
          const Spacer(),
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
          ),
          const Spacer(),
          Container(
            width: 80,
            height: 80,
            color: Colors.green,
          ),
          const Spacer(),
          Container(
            width: 80,
            height: 80,
            color: Colors.blue,
          ),
          const Spacer(),
        ],
      ),
    ));
  }
}
