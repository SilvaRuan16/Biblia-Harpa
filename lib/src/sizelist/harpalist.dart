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
        backgroundColor: Colors.blue,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu, color: Colors.white),
              color: Colors.black);
        }),
        title: const Text(
          'Harpa Cristã',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
            ),
            ListTile(
              title: Text('Item 2'),
            ),
            ListTile(
              title: Text('Item 3'),
            ),
            SizedBox(
              width: double.infinity,
              child: ListTile(
                title: Text(
                  'Voltar',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Initial()));
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
                      builder: (context) =>
                          HarpContentScreen(harp: harps[index])));
            },
          );
        },
      ),
    );
  }
}
