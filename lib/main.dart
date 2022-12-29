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
          title: const Text('Stack dan Align'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah text yang berada di bagian tengah stack',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah text yang berada di bagian tengah stack',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah text yang berada di bagian tengah stack',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah text yang berada di bagian tengah stack',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah text yang berada di bagian tengah stack',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah text yang berada di bagian tengah stack',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'ini adalah text yang berada di bagian tengah stack',
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
            const Align(
              alignment: Alignment(0, 0.90),
              child: ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)),
                child: Text('My Button'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
