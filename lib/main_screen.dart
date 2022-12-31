import 'package:flutter/material.dart';
import 'second_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const SecondScreen();
              }),
            );
          },
          child: const Text('Go To Second Page'),
        ),
      ),
    );
  }
}
