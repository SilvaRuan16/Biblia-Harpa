import 'dart:convert';
import 'package:biblia_e_harpa/src/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextModel {
  final String hino;
  final String coro;
  final Map<String, String> verses;

  TextModel({required this.hino, required this.coro, required this.verses});

  factory TextModel.fromJson(Map<String, dynamic> json) {
    return TextModel(
      hino: json['hino'] ?? 'Hino não encontrado',
      coro: json['coro'] ?? '',
      verses: Map<String, String>.from(json['verses'] ?? {}),
    );
  }
}

class HarpContentScreen extends StatelessWidget {
  const HarpContentScreen({super.key, required this.harp});

  final String harp;

  Future<List<TextModel>> loadTexts() async {
    try {
      String jsonString = await rootBundle
          .loadString('assets/json/harpa_crista_640_hinos.json');
      Map<String, dynamic> jsonResponse = jsonDecode(jsonString);
      List<TextModel> texts = [];
      jsonResponse.forEach((key, value) {
        texts.add(TextModel.fromJson(value));
      });
      return texts;
    } catch (_) {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(harp, style: const TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FutureBuilder<List<TextModel>>(
          future: loadTexts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) return const Center(child: CircularProgressIndicator());
            if (snapshot.hasError) return const Center(child: Text('Erro ao carregar os textos.'));
            if (!snapshot.hasData || snapshot.data!.isEmpty) return const Center(child: Text('Nenhum texto encontrado.'));

            final harpText = snapshot.data!.firstWhere(
              (text) => text.hino.toLowerCase().trim() == harp.toLowerCase().trim(),
                orElse: () => TextModel(hino: '', coro: '', verses: {}),
            );

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, 
                children: [
                  Text(
                    harpText.coro,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16), 
                  ...harpText.verses.entries.map(
                    (entry) => Padding(
                      padding: const EdgeInsets.only(
                          bottom: 8.0), 
                      child: Text(
                        "${entry.key}. ${entry.value}",
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
