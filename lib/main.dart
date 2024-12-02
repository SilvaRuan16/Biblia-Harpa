import 'package:flutter/material.dart';
import 'package:appbible/src/initial/initial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Bible',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Initial(),
    );
  }
}
