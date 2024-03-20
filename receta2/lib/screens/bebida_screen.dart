import 'package:flutter/material.dart';

class BebidaScreen extends StatelessWidget {
   BebidaScreen({super.key});

  final List<String> items = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "siete"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          }),
    );
  }
}
