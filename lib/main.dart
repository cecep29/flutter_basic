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
          title: const Text("Aplikasi Pertamaku"),
        ),
        body: Center(
          child: Container(
              width: 150,
              height: 50,
              color: Colors.lightBlue,
              padding: const EdgeInsets.all(15),
              child: const Text(
                "Hello World",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              )),
        ),
      ),
    );
  }
}
