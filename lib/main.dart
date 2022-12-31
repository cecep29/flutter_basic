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
          backgroundColor: Colors.green,
          body: Container(
            margin: const EdgeInsets.all(10),
            child: ListView(
              children: [
                buildCard(Icons.adb, "Acount Box"),
                buildCard(Icons.abc, "ABC Box")
              ],
            ),
          )),
    );
  }

  Card buildCard(IconData icon, String text) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(children: [Icon(icon), Text(text)]),
      ),
    );
  }
}
