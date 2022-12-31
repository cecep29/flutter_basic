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
        leading: const Icon(
          Icons.adb,
          color: Colors.black,
        ),
        title: const Text(
          'AppBar Example',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.exit_to_app,
              color: Colors.black,
            ),
          )
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.blueGrey],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight),
            image: DecorationImage(
                image: AssetImage('images/transparent_pattern.jpg'),
                fit: BoxFit.none,
                repeat: ImageRepeat.repeat),
          ),
        ),
      ),
      body: Center(child: Image.asset('images/jenni.webp')),
    ));
  }
}
