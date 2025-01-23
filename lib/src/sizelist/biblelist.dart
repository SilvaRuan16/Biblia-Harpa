import 'package:biblia_e_harpa/src/config.dart';
import 'package:biblia_e_harpa/src/keys/biblekey.dart';
import 'package:biblia_e_harpa/src/sizelist/chapterlist.dart';
import 'package:flutter/material.dart';

class BiibleList extends StatelessWidget {
  const BiibleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Biblia Cristã',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final bookName = books[index];
          return ListTile(
            title: Text(bookName),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChapterListScreen(
                    name: bookName, 
                    jsonPath: 'assets/json/acf.json',
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
