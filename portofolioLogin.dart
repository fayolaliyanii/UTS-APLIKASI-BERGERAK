import 'package:belajar_navigation1/Project1login.dart';
import 'package:belajar_navigation1/aboutLogin.dart';
import 'package:belajar_navigation1/halamanHome.dart';
import 'package:belajar_navigation1/homePageLogin.dart';
import 'package:flutter/material.dart';

class portofolioLogin extends StatelessWidget {
  const portofolioLogin({super.key});

  void showAlertDialog(BuildContext context) {
    // set up the button
    Widget yesButton = TextButton(
      child: Text("Yes"),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MyApp()));
      },
    );
    Widget noButton = TextButton(
      child: Text("No"),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => homePageLogin()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Row(
        children: const [
          Icon(Icons.logout),
          Text("Logout"),
        ],
      ),
      content: const Text("Are you sure you want to logout?"),
      actions: [yesButton, noButton],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

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
                    builder: (context) => const Project1login(),
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
                    builder: (context) => const homePageLogin(),
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
                    builder: (context) => const portofolioLogin(),
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
                    builder: (context) => const aboutLogin(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                showAlertDialog(context);
                //Navigator.of(context).push(MaterialPageRoute(
                //builder: (context) => const MyApp(),
                //));
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
