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
  List<Widget> myList = [const Text('Test')];

  int number = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: const Text('Add List'),
                  onPressed: () {
                    setState(() {
                      myList.add(
                        Text(' List ke: $number'),
                      );
                      number++;
                    });
                  },
                ),
                ElevatedButton(
                  child: const Text('Remove List'),
                  onPressed: () {
                    setState(() {
                      myList.removeLast();
                      number = number - 1;
                    });
                  },
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: myList.toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
