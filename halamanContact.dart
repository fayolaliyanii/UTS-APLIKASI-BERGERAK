import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

// ignore: camel_case_types
class halamanContact extends StatelessWidget {
  const halamanContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 209, 176),
      body: Container(
        padding: EdgeInsets.only(top: 30.0),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1567016376408-0226e4d0c1ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text("Whatsapp", style: TextStyle(fontSize: 20.0)))
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
