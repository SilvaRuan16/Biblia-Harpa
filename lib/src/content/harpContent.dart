import 'dart:convert';
import 'package:appbible/src/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextModel {
  final String title;
  final String content;

  TextModel({required this.title, required this.content});

  factory TextModel.fromJson(Map<String, dynamic> json) {
    return TextModel(title: json['title'], content: json['content']);
  }
}

class HarpContentScreen extends StatelessWidget {
  const HarpContentScreen({super.key, required this.harp});

  final String harp;

  Future<List<TextModel>> loadTexts() async {
    String jsonString = await rootBundle.loadString('../../assets/json/texts.json');
    Map<String, dynamic> jsonResponse = jsonDecode(jsonString);
    List<dynamic> textJson = jsonResponse['texts'];
    List<TextModel> texts = textJson.map((json) => TextModel.fromJson(json)).toList();

    return texts;
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
              (text) => text.title == harp,
              orElse: () => TextModel(title: 'Não encontrado', content: 'Hino não encontrado'),
            );

            return SingleChildScrollView(
              child: Text(harpText.content, style: const TextStyle(fontSize: 16)),
            );
          },
        ),
      ),
    );
  }
}
