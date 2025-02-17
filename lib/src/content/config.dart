import 'package:biblia_e_harpa/src/config.dart';
import 'package:biblia_e_harpa/src/content/versionSelected.dart';
import 'package:flutter/material.dart';

class Config extends StatelessWidget {
  const Config({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configurações", style: TextStyle(color: Colors.white)),
        backgroundColor: mainColor,
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const VersionSelected(),
    );
  }
}