import 'dart:math';

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
  Color color1 = Colors.red;
  Color color2 = Colors.yellow;
  Color? colorTarget;

  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Dragable'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  childWhenDragging: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      shape: StadiumBorder(),
                      color: Colors.grey,
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      shape: const StadiumBorder(),
                      color: color1.withOpacity(0.7),
                      elevation: 3,
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      shape: const StadiumBorder(),
                      color: color1,
                      elevation: 3,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (val) {
                isAccepted = true;
                colorTarget = val;
              },
              builder: ((context, candidateData, rejectedData) {
                return (isAccepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          shape: const StadiumBorder(),
                          color: colorTarget,
                        ),
                      )
                    : const SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          shape: StadiumBorder(),
                          color: Colors.grey,
                        ),
                      );
              }),
            )
          ],
        ),
      ),
    );
  }
}
