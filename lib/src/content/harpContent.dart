import 'dart:convert';
import 'dart:math';
import 'package:appbible/src/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextModel {
  final String hino;
  final String coro;
  final String verses;

  TextModel({required this.hino, required this.coro, required this.verses});

  factory TextModel.fromJson(Map<String, dynamic> json) {
    return TextModel(hino: json['hino'], coro: json['coro'], verses: json['verses']);
  }
}

class HarpContentScreen extends StatelessWidget {
  const HarpContentScreen({super.key, required this.harp});

  final String harp;

  Future<List<TextModel>> loadTexts() async {
    try {
      String jsonString = await rootBundle.loadString('assets/json/harpa_crista_640_hinos.json');
      Map<String, dynamic> jsonResponse = jsonDecode(jsonString);
      List<dynamic> textJson = jsonResponse['texts'];
      List<TextModel> texts = textJson.map((json) => TextModel.fromJson(json)).toList();
      return texts;
    } catch(_) {
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
            if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator());
            }

            if(snapshot.hasError){
              return const Center(child: Text('Erro ao carregar os textos.'));
            }

            if(!snapshot.hasData || snapshot.data!.isEmpty){
              return const Center(child: Text('Nenhum texto encontrado.'));
            }

            final harpText = snapshot.data!.firstWhere(
              (text) => text.hino == harp,
              orElse: () => TextModel(hino: 'Hino não encontrado', coro: 'Coro não encontrado', verses: 'Versos não encontrados'),
            );

            return SingleChildScrollView(
              child: Column(
                children: [
                  Text(harpText.coro, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(harpText.verses, style: const TextStyle(fontSize: 16)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
