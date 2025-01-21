import 'package:biblia_e_harpa/src/config.dart';
import 'package:biblia_e_harpa/src/sizelist/verses.dart';
import 'package:flutter/material.dart';

class ChapterListScreen extends StatelessWidget {
  final String bookName;
  final int totalChapters = 50;

  const ChapterListScreen({super.key, required this.bookName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text('Capítulos de $bookName', style: const TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: totalChapters,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Capítulo ${index + 1}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VerseListScreen(
                    bookName: bookName,
                    chapterNumber: index + 1,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
