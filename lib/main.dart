import 'package:biblia_e_harpa/src/initial/initial.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biblia e Harpa',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const Initial(),
    );
  }
}