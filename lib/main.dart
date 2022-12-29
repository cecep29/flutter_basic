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
          title: const Text('Image'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            //   child: Image.network(
            //       'https://cdn-asset.jawapos.com/wp-content/uploads/2019/01/resmi-berkencan-kini-jennie-blackpink-miliki-2-kai-kesayangan_m_-750x500.jpg'),
            // ),
            child: Image.asset('images/jenni.webp'),
          ),
        ),
      ),
    );
  }
}
