import 'package:biblia_e_harpa/src/config.dart';
import 'package:biblia_e_harpa/src/keys/biblekey.dart';
import 'package:biblia_e_harpa/src/sizelist/chapterlist.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BibleList extends StatefulWidget {
  const BibleList({super.key});

  @override
  _BibleListState createState() => _BibleListState();
}

class _BibleListState extends State<BibleList> {
  List<String> filteredBible = [];
  final TextEditingController _searchController = TextEditingController();
  String _jsonPath = 'assets/json/acf.json';

  @override
  void initState() {
    super.initState();
    _loadSelectedVersion();
    filteredBible = books;
    _searchController.addListener(_filterBible);
  }

  Future<void> _loadSelectedVersion() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _jsonPath = 'assets/json/${prefs.getString('selectedVersion') ?? 'acf.json'}';
    });
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.removeListener(_filterBible);
    _searchController.dispose();
  }

  String _normalize(String input) {
    return input
        .toLowerCase()
        .replaceAll(RegExp(r'[áàâãä]'), 'a')
        .replaceAll(RegExp(r'[éèêë]'), 'e')
        .replaceAll(RegExp(r'[íìîï]'), 'i')
        .replaceAll(RegExp(r'[óòôõö]'), 'o')
        .replaceAll(RegExp(r'[úùûü]'), 'u')
        .replaceAll(RegExp(r'[ç]'), 'c');
  }

  void _filterBible() {
    setState(() {
      filteredBible = books
          .where(
            (book) =>
                _normalize(book).contains(_normalize(_searchController.text)),
          )
          .toList();
    });
  }

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: "Pesquisar Livro",
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  onPressed: () {
                    _searchController.clear();
                    setState(() {
                      filteredBible = books;
                    });
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredBible.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.menu_book_rounded),
                  title: Text(filteredBible[index]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChapterListScreen(
                          name: filteredBible[index],
                          jsonPath: _jsonPath,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}