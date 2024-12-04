
import 'package:flutter/material.dart';

import '../Texts/HarpTexts.dart';

class HarpContentScreen extends StatelessWidget {
  const HarpContentScreen({super.key, required this.harp});

  final String harp;

  @override
  Widget build(BuildContext context) {

    final listTexts texts = listTexts();

    final Map<String, String> harpContents = {
      'Chuvas de Graça': texts.h1,
    };

    return Scaffold(
      appBar: AppBar(title: Text(harp)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          harpContents[harp] ?? 'Hino não encontrado',
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
