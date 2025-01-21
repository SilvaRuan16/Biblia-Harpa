import 'package:biblia_e_harpa/src/config.dart';
import 'package:flutter/material.dart';

class VerseListScreen extends StatelessWidget {
  final String bookName;
  final int chapterNumber;
  final int totalVerses = 30;

  const VerseListScreen(
      {super.key, required this.bookName, required this.chapterNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          '$bookName - Capítulo $chapterNumber',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: totalVerses,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Versículo ${index + 1}'),
            subtitle: Text('Texto do versículo ${index + 1}.'),
          );
        },
      ),
    );
  }
}
