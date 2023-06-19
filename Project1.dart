import 'package:belajar_navigation1/aboutLogin.dart';
import 'package:belajar_navigation1/halamanAbout.dart';
import 'package:belajar_navigation1/halamanHome.dart';
import 'package:belajar_navigation1/halamanPortofolio.dart';
import 'package:belajar_navigation1/homePageLogin.dart';
import 'package:belajar_navigation1/portofolioLogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Project1 extends StatelessWidget {
  const Project1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 209, 176),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1567016376408-0226e4d0c1ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
                  fit: BoxFit.cover)),
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Text("Project 1",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
              const SizedBox(
                height: 30.0,
              ),
              const Text("MODERN CLASSIC CITRA LAND SURABAYA",
                  style: TextStyle(
                      decoration: TextDecoration.underline, fontSize: 20.0)),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                  "Prinsip-prinsip desain klasik yang timeless dan elegan, digabungkan dengan detail desain yang modern dan kontemporer, meciptakan suasana interior yang mewah dan prestigious",
                  style: TextStyle(fontSize: 15.0)),
              const SizedBox(
                height: 50.0,
              ),
              Container(
                height: 350.0,
                width: 400.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1600210491892-03d54c0aaf87?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          )),
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
