import 'package:belajar_navigation1/Project1.dart';
import 'package:belajar_navigation1/halamanAbout.dart';
import 'package:belajar_navigation1/halamanHome.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class halamanPortofolio extends StatelessWidget {
  const halamanPortofolio({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'PROJECT 1',
      'PROJECT 2',
      'PROJECT 3',
      'PROJECT 4',
      'PROJECT 5',
      'PROJECT 6',
      'PROJECT 7',
      'PROJECT 8'
    ];
    final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100, 90, 50];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 209, 176),
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.vertical,
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Project1(),
                  ),
                );
              },
              child: Container(
                height: 150,
                width: 150,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text(entries[index])),
              ),
            );
          }),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("HOME"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyApp(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.file_copy),
              title: const Text("PORTOFOLIO"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const halamanPortofolio(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.article),
              title: const Text("ABOUT"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const halamanAbout(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(197, 36, 22, 2),
        title: const Text("Filostudio"),
      ),
    );
  }
}
