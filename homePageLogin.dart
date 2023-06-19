import 'package:belajar_navigation1/aboutLogin.dart';
import 'package:belajar_navigation1/halamanContact.dart';
import 'package:belajar_navigation1/halamanHome.dart';
import 'package:belajar_navigation1/portofolioLogin.dart';
import 'package:flutter/material.dart';

class homePageLogin extends StatelessWidget {
  const homePageLogin({super.key});

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
    var judul = "FILOSTUDIO";
    var body1 = "We provide industrial design and architecture services";
    var body2 = "See our design";
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
            Text("Welcome, yola!"),
          ],
        ),
      ),
    );
  }
}
