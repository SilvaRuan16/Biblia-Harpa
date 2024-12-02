import 'package:flutter/material.dart';
import '../sizelist/harpalist.dart';
import '../sizelist/biblelist.dart';

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Text(
                'Harpa e Biblia',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey[800],
                ),
              ),
            ),
            const SizedBox(height: 70),
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
                    MaterialPageRoute(
                      builder: (context) => const HarpaList(),
                    ),
                  );
                },
                label: Text('Harpa',
                    style: TextStyle(fontSize: 18, color: Colors.grey[800])),
              ),
            ),
            const SizedBox(height: 20),
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
                    MaterialPageRoute(
                      builder: (context) => const BiibleList(),
                    ),
                  );
                },
                label: Text('Biblia',
                    style: TextStyle(fontSize: 18, color: Colors.grey[800])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
