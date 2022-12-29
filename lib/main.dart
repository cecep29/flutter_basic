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
          title: const Text('Flexible'),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      color: Colors.red,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      color: Colors.blue,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      color: Colors.purple,
                    ),
                  )
                ],
              ),
            ),
            Flexible(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  color: Colors.amberAccent,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  color: Colors.blue,
                ))
          ],
        ),
      ),
    );
  }
}
