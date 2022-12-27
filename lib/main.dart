import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name = "ini adalah text";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Anonymous function'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = 'ini teks yang diganti';
                  });
                },
                child: const Text('ganti teks'))
          ],
        )),
      ),
    );
  }
}
