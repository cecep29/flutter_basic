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
          title: const Text('Text Decoration'),
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(width: 3, color: Colors.blue),
                ),
                hintText: 'Masukan nama',
                label: const Text('Nama Lengkap'),
                prefixIcon: const Icon(Icons.person)),
          ),
        ),
      ),
    );
  }
}
