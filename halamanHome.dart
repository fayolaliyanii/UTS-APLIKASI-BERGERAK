import 'package:belajar_navigation1/halamanAbout.dart';
import 'package:belajar_navigation1/halamanContact.dart';
import 'package:belajar_navigation1/halamanLogin.dart';
import 'package:belajar_navigation1/halamanPortofolio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var judul = "FILOSTUDIO";
  var body1 = "We provide industrial design and architecture services";
  var body2 = "See our design";

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 209, 176),
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
      )),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1567016376408-0226e4d0c1ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
                fit: BoxFit.cover)),
        padding: const EdgeInsets.only(left: 45.0, top: 50.0),
        child: Column(
          children: [
            const Text(
              "Welcome",
              style:
                  TextStyle(decoration: TextDecoration.underline, fontSize: 50),
            ),
            const Text(
              "to",
              style:
                  TextStyle(decoration: TextDecoration.underline, fontSize: 50),
            ),
            const Text(
              "Filostudio",
              style:
                  TextStyle(decoration: TextDecoration.underline, fontSize: 50),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(body1),
            Text(body2),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const halamanContact(),
                    ),
                  );
                },
                child: Text("CONTACT US"))
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(197, 36, 22, 2),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(judul),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 123, 92, 57)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HalamanLogin(),
                    ),
                  );
                },
                child: const Text("LOGIN")),
          ],
        ),
      ),
    );
  }
}
