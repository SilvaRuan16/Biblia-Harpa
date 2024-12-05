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
          children: [
            Expanded(
              child: ListView(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.brown[700],
                    ),
                    child: const Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text('Item 1'),
                    onTap: () {
                      // Ação para o Item 1
                    },
                  ),
                  ListTile(
                    title: const Text('Item 2'),
                    onTap: () {
                      // Ação para o Item 2
                    },
                  ),
                  ListTile(
                    title: const Text('Item 3'),
                    onTap: () {
                      // Ação para o Item 3
                    },
                  ),
                ],
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
