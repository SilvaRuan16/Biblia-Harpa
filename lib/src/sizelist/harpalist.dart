import 'package:appbible/src/content/harpContent.dart';
import 'package:appbible/src/initial/initial.dart';
import 'package:flutter/material.dart';

class HarpaList extends StatelessWidget {
  HarpaList({super.key});

  final List<String> harps = [
    '1 - Chuvas de Graça',
    '2 - Saudosa Lembrança',
    '3 - Plena Paz',
    '4 - Deus Velará Por Ti',
    '5 - Ó Desce Fogo Santo'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu, color: Colors.white),
            );
          },
        ),
        title: const Text(
          'Harpa Cristã',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown[700],
              ),
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle
                ),
                child: Image.asset(
                  'assets/images/logoFotoImage.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ListTile(
                tileColor: Colors.brown,
                title: const Text(
                  'Voltar',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Initial()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: harps.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.menu_book_rounded),
            title: Text(harps[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HarpContentScreen(harp: harps[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
