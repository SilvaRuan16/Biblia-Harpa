
import 'package:flutter/material.dart';

import '../Texts/HarpTexts.dart';

class HarpContentScreen extends StatelessWidget {
  const HarpContentScreen({super.key, required this.harp});

  final String harp;

  @override
  Widget build(BuildContext context) {

    final listTexts texts = listTexts();

    final Map<String, String> harpContents = {
      '1 - Chuvas de Graça': texts.h1,
      '2 - Saudosa Lembrança': texts.h2,
      '3 - Plena Paz': texts.h3,
      '4 - Deus Velará Por Ti': texts.h4,
      '5 - Ó Desce Fogo Santo': texts.h5
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: Text(harp, style: const TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Text(
            harpContents[harp] ?? 'Hino não encontrado',
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
