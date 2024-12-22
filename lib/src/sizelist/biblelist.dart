import 'package:biblia_e_harpa/src/config.dart';
import 'package:biblia_e_harpa/src/initial/initial.dart';
import 'package:flutter/material.dart';

class BiibleList extends StatelessWidget {
  const BiibleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
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
          'Bíblia Cristã',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: mainColor,
              ),
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle
                ),
                child: Image.asset(
                  'assets/images/drawerimg.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ListTile(
                tileColor: mainColor,
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
      body: const Center(child: Text('Em desenvolvimento', style: TextStyle(fontSize: 18))),
    );
  }
}