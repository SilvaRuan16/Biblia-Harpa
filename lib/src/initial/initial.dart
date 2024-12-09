import 'package:appbible/src/sizelist/biblelist.dart';
import 'package:appbible/src/sizelist/harpalist.dart';
import 'package:flutter/material.dart';

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[700],
      body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            const SizedBox(height: 40),
            const Icon(Icons.menu_book_rounded, color: Colors.white, size: 100.0),
            const Text('ADSV', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold)),
            const SizedBox(height: 70),
            Column( 
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.menu_book_rounded, color: Colors.grey[800]),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HarpaList()),
                      );
                    },
                    label: Text(
                      'Harpa',
                      style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(width: 10.0), 
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.menu_book_rounded, color: Colors.grey[800]),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BiibleList()),
                      );
                    },
                    label: Text(
                      'Biblia',
                      style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}